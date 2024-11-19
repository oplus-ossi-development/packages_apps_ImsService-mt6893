.class public Lcom/mediatek/ims/OplusImsServiceControllerExt;
.super Lcom/oplus/ims/stub/ImsServiceControllerExt;
.source "OplusImsServiceControllerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/OplusImsServiceControllerExt$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_IMS_REG_REMAIN_TIME_IND:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "OplusImsServiceControllerExt"

.field private static sInstance:Lcom/mediatek/ims/OplusImsServiceControllerExt;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mMtkImsService:Lcom/mediatek/ims/MtkImsService;

.field private mNumOfPhones:I

.field private mTelephonyRegistryManagerExt:Landroid/telephony/TelephonyRegistryManagerExt;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/oplus/ims/stub/ImsServiceControllerExt;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 52
    iput-object v0, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mNumOfPhones:I

    .line 60
    iput-object p1, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/mediatek/ims/OplusImsServiceControllerExt;->addService()V

    .line 62
    iget-object v1, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 63
    invoke-virtual {v1}, Lcom/mediatek/ims/ImsService;->getImsRILAdapters()[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 65
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mNumOfPhones:I

    .line 66
    new-instance v1, Lcom/mediatek/ims/OplusImsServiceControllerExt$MyHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/ims/OplusImsServiceControllerExt$MyHandler;-><init>(Lcom/mediatek/ims/OplusImsServiceControllerExt;Lcom/mediatek/ims/OplusImsServiceControllerExt$1;)V

    iput-object v1, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mHandler:Landroid/os/Handler;

    .line 67
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget v1, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mNumOfPhones:I

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForEregrtInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "phoneId":I
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mContext:Landroid/content/Context;

    .line 71
    const-string v1, "telephony_registry_ext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManagerExt;

    iput-object v0, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mTelephonyRegistryManagerExt:Landroid/telephony/TelephonyRegistryManagerExt;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/OplusImsServiceControllerExt;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/OplusImsServiceControllerExt;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/mediatek/ims/OplusImsServiceControllerExt;->eventToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/OplusImsServiceControllerExt;)Landroid/telephony/TelephonyRegistryManagerExt;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/OplusImsServiceControllerExt;

    .line 46
    iget-object v0, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mTelephonyRegistryManagerExt:Landroid/telephony/TelephonyRegistryManagerExt;

    return-object v0
.end method

.method private addService()V
    .locals 4

    .line 138
    const-string v0, "OplusImsServiceControllerExt"

    :try_start_0
    const-string v1, "add Service.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v1, "iims_ext"

    invoke-virtual {p0}, Lcom/mediatek/ims/OplusImsServiceControllerExt;->getIImsExt()Lcom/oplus/ims/IImsExt;

    move-result-object v2

    invoke-interface {v2}, Lcom/oplus/ims/IImsExt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Service failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private eventToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "eventId"    # I

    .line 105
    const-string v0, "Unknown msg"

    .line 106
    .local v0, "ret":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    const-string v0, "EVENT_IMS_REG_REMAIN_TIME_IND"

    .line 109
    nop

    .line 113
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/mediatek/ims/OplusImsServiceControllerExt;
    .locals 2

    .line 117
    sget-object v0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->sInstance:Lcom/mediatek/ims/OplusImsServiceControllerExt;

    if-nez v0, :cond_0

    .line 118
    const-string v0, "OplusImsServiceControllerExt"

    const-string v1, "OplusImsServiceControllerExt, occur errr,  nullpointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    sget-object v0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->sInstance:Lcom/mediatek/ims/OplusImsServiceControllerExt;

    return-object v0
.end method

.method public static make(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/mediatek/ims/OplusImsServiceControllerExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 124
    const-class v0, Lcom/mediatek/ims/OplusImsServiceControllerExt;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/OplusImsServiceControllerExt;->sInstance:Lcom/mediatek/ims/OplusImsServiceControllerExt;

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Lcom/mediatek/ims/OplusImsServiceControllerExt;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/OplusImsServiceControllerExt;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/mediatek/ims/OplusImsServiceControllerExt;->sInstance:Lcom/mediatek/ims/OplusImsServiceControllerExt;

    .line 128
    :cond_0
    sget-object v1, Lcom/mediatek/ims/OplusImsServiceControllerExt;->sInstance:Lcom/mediatek/ims/OplusImsServiceControllerExt;

    monitor-exit v0

    return-object v1

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public initService(Lcom/mediatek/ims/MtkImsService;)V
    .locals 0
    .param p1, "mtkImsService"    # Lcom/mediatek/ims/MtkImsService;

    .line 133
    iput-object p1, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt;->mMtkImsService:Lcom/mediatek/ims/MtkImsService;

    .line 134
    return-void
.end method
