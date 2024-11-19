.class public Lcom/mediatek/ims/ImsRilService;
.super Landroid/app/Service;
.source "ImsRilService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsRilService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 19
    const-string v0, "ImsRilService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lcom/mediatek/ims/OplusImsRil;->getInstance()Lcom/mediatek/ims/OplusImsRil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/OplusImsRil;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 13
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 14
    const-string v0, "ImsRilService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method
