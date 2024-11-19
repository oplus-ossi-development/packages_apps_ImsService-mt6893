.class public Lcom/mediatek/ims/OplusImsRil;
.super Ljava/lang/Object;
.source "OplusImsRil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusImsRil"

.field private static sMe:Lcom/mediatek/ims/OplusImsRil;


# instance fields
.field public final mBinder:Landroid/telephony/ims/aidl/IImsRil;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/OplusImsRil;->sMe:Lcom/mediatek/ims/OplusImsRil;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/mediatek/ims/OplusImsRil$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/OplusImsRil$1;-><init>(Lcom/mediatek/ims/OplusImsRil;)V

    iput-object v0, p0, Lcom/mediatek/ims/OplusImsRil;->mBinder:Landroid/telephony/ims/aidl/IImsRil;

    .line 67
    const-string v0, "OplusImsRil"

    const-string v1, "creating OplusImsRil"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/OplusImsRil;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/mediatek/ims/OplusImsRil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    const-class v0, Lcom/mediatek/ims/OplusImsRil;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/OplusImsRil;->sMe:Lcom/mediatek/ims/OplusImsRil;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/mediatek/ims/OplusImsRil;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/OplusImsRil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/ims/OplusImsRil;->sMe:Lcom/mediatek/ims/OplusImsRil;

    .line 62
    :cond_0
    sget-object v1, Lcom/mediatek/ims/OplusImsRil;->sMe:Lcom/mediatek/ims/OplusImsRil;

    monitor-exit v0

    return-object v1

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/mediatek/ims/OplusImsRil;
    .locals 1

    .line 51
    sget-object v0, Lcom/mediatek/ims/OplusImsRil;->sMe:Lcom/mediatek/ims/OplusImsRil;

    if-eqz v0, :cond_0

    .line 52
    return-object v0

    .line 54
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/OplusImsRil;->create(Landroid/content/Context;)Lcom/mediatek/ims/OplusImsRil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mediatek/ims/OplusImsRil;->mBinder:Landroid/telephony/ims/aidl/IImsRil;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsRil;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
