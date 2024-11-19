.class public Lcom/mediatek/wfo/plugin/ExtensionFactory;
.super Ljava/lang/Object;
.source "ExtensionFactory.java"


# static fields
.field private static final LEGACY_COMPONENT_NAME:Ljava/lang/String; = "com.mediatek.wfo.legacy.LegacyComponentFactoryImpl"

.field public static final LOG_TAG:Ljava/lang/String; = "WfoExtensionFactory"

.field private static sLegacyComponentFactory:Lcom/mediatek/wfo/plugin/LegacyComponentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeLegacyComponentFactory(Landroid/content/Context;)Lcom/mediatek/wfo/plugin/LegacyComponentFactory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 77
    sget-object v0, Lcom/mediatek/wfo/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/wfo/plugin/LegacyComponentFactory;

    if-nez v0, :cond_1

    .line 78
    const-string v0, "ro.vendor.md_auto_setup_ims"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "WfoExtensionFactory"

    const-string v1, "Gen93 detected !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_0
    const-string v0, "ro.vendor.mtk_telephony_add_on_policy"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    :goto_0
    sget-object v0, Lcom/mediatek/wfo/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/wfo/plugin/LegacyComponentFactory;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/mediatek/wfo/plugin/impl/LegacyComponentFactoryBase;

    invoke-direct {v0}, Lcom/mediatek/wfo/plugin/impl/LegacyComponentFactoryBase;-><init>()V

    sput-object v0, Lcom/mediatek/wfo/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/wfo/plugin/LegacyComponentFactory;

    .line 104
    :cond_1
    sget-object v0, Lcom/mediatek/wfo/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/wfo/plugin/LegacyComponentFactory;

    return-object v0
.end method
