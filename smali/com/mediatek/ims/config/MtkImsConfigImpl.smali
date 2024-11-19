.class public Lcom/mediatek/ims/config/MtkImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "MtkImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x1

.field public static final IMS_PREFERRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[SR-IMS][MtkImsConfigImpl]"

.field public static final UI_SETTING_IMS_PREFERRED:I = 0xa

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private final mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

.field private mRcsEventCallback:Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

.field private mSlotId:I

.field private uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsConfig;I)V
    .locals 3
    .param p1, "config"    # Lcom/android/ims/internal/IImsConfig;
    .param p2, "slotId"    # I

    .line 62
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    .line 64
    iput p2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    .line 65
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;-><init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mRcsEventCallback:Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->registerAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkImsConfigImpl register ACS fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/config/MtkImsConfigImpl;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->updateConfiguration(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 38
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SR-IMS][MtkImsConfigImpl]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SR-IMS][MtkImsConfigImpl]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SR-IMS][MtkImsConfigImpl]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SR-IMS][MtkImsConfigImpl]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method private updateConfiguration(ZI)V
    .locals 9
    .param p1, "valid"    # Z
    .param p2, "version"    # I

    .line 223
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 224
    .local v0, "subIds":[I
    if-eqz v0, :cond_8

    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 225
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 226
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->updateSipTransport(I)V

    .line 228
    :cond_0
    :try_start_0
    aget v2, v0, v1

    invoke-static {v2}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v2

    .line 229
    .local v2, "pm":Landroid/telephony/ims/ProvisioningManager;
    if-eqz v2, :cond_7

    .line 230
    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    .line 231
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v4, "capInfoExpiry"

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x5460

    .line 232
    .local v3, "rcsExpiry":I
    :goto_0
    const/16 v4, 0x12

    .line 233
    .local v4, "key":I
    invoke-virtual {v2, v4}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v5

    if-eq v5, v3, :cond_2

    .line 234
    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ProvisioningManager;->setProvisioningIntValue(II)I

    .line 237
    :cond_2
    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    .line 238
    iget-object v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v6, "source-throttlepublish"

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    goto :goto_1

    :cond_3
    const/16 v5, 0x7530

    .line 239
    .local v5, "publishThrottle":I
    :goto_1
    const/16 v4, 0x15

    .line 240
    invoke-virtual {v2, v4}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v6

    if-eq v6, v5, :cond_4

    .line 241
    invoke-virtual {v2, v4, v5}, Landroid/telephony/ims/ProvisioningManager;->setProvisioningIntValue(II)I

    .line 244
    :cond_4
    iget-object v6, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v6}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v6

    .line 245
    .local v6, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/mediatek/ims/rcsua/AcsConfiguration;->readXmlData()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_5
    move-object v8, v7

    .line 246
    .local v8, "info":Ljava/lang/String;
    :goto_2
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 247
    .local v7, "infoByte":[B
    :cond_6
    if-eqz v7, :cond_7

    .line 248
    invoke-virtual {v2, v7, v1}, Landroid/telephony/ims/ProvisioningManager;->notifyRcsAutoConfigurationReceived([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 251
    .end local v2    # "pm":Landroid/telephony/ims/ProvisioningManager;
    .end local v3    # "rcsExpiry":I
    .end local v4    # "key":I
    .end local v5    # "publishThrottle":I
    .end local v6    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .end local v7    # "infoByte":[B
    .end local v8    # "info":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConfiguration, excpetion happened! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 253
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    goto :goto_4

    .line 255
    :cond_8
    const-string v1, "updateConfiguration, invalid subId"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->log(Ljava/lang/String;)V

    .line 257
    :goto_4
    return-void
.end method

.method private updateSipTransport(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 260
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    .line 261
    .local v0, "imsService":Lcom/mediatek/ims/ImsService;
    if-nez v0, :cond_0

    .line 262
    const-string v1, "ImsService retrieval fail in updateSipTransport"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 263
    return-void

    .line 265
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->getSipTransport(I)Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    move-result-object v1

    .line 266
    .local v1, "transport":Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
    if-nez v1, :cond_1

    .line 267
    const-string v2, "SipTransport retrieval fail in updateSipTransport"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 268
    return-void

    .line 270
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v3, "FtHttpServerAddr"

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "ftUri":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 273
    .local v3, "provisioned":Z
    :goto_0
    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

    invoke-virtual {v1, v4, v3}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->notifyProvisioningChanged(Ljava/lang/String;Z)V

    .line 274
    return-void
.end method


# virtual methods
.method public getConfigInt(I)I
    .locals 4
    .param p1, "item"    # I

    .line 114
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedValue(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .local v1, "value":I
    if-eq v1, v0, :cond_0

    .line 116
    return v1

    .line 120
    .end local v1    # "value":I
    :cond_0
    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigInt: item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 121
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # I

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigInt: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public setConfig(II)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 82
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 84
    const/4 p2, 0x4

    .line 88
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedValue(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 89
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_1
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfig: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfig: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 3
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRcsClientConfig with rcc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logi(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-eqz v0, :cond_1

    .line 141
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcsonfiguration, excpetion happened! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public triggerAutoConfiguration()V
    .locals 3

    .line 151
    const-string v0, "triggerAutoConfiguration"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logi(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-eqz v0, :cond_1

    .line 155
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->triggerAcsRequest(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerAutoConfiguration error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 160
    :cond_1
    const-string v0, "ua service is null"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 162
    :goto_1
    return-void
.end method
