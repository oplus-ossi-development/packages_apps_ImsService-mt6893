.class public Lcom/mediatek/ims/MtkImsService;
.super Lcom/mediatek/ims/internal/IMtkImsService$Stub;
.source "MtkImsService.java"


# static fields
.field private static final DBG:Z = true

.field private static final ENGLOAD:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsService:Lcom/mediatek/ims/ImsService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/MtkImsService;->ENGLOAD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsService"    # Lcom/mediatek/ims/ImsService;

    .line 78
    invoke-direct {p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 79
    iput-object p2, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 80
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    .line 81
    const-string v0, "init"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkImsService;->log(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 250
    sget-boolean v0, Lcom/mediatek/ims/MtkImsService;->ENGLOAD:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkImsService;->log(Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 245
    const-string v0, "MtkImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 260
    const-string v0, "MtkImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 256
    const-string v0, "MtkImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method


# virtual methods
.method public UpdateImsState(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "UpdateImsState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->onUpdateImsSate(I)V

    .line 110
    return-void
.end method

.method public addImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 266
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "addImsSmsListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->onAddImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 270
    return-void
.end method

.method public changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 324
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "changeEnabledCapabilities"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 328
    return-void
.end method

.method public createMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .param p4, "aospCallSessionImpl"    # Lcom/android/ims/internal/IImsCallSession;

    .line 187
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "createMtkCallSession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/ImsService;->onCreateMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public deregisterIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 154
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "deregisterIms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->deregisterIms(I)V

    .line 158
    return-void
.end method

.method public fallBackAospMTFlow(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 309
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "fallBackAospMTFlow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->fallBackAospMTFlow(I)V

    .line 313
    return-void
.end method

.method public getConfigInterfaceEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;
    .locals 3
    .param p1, "phoneId"    # I

    .line 174
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getConfigInterfaceEx"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    .line 180
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsService;->getImsConfigManager()Lcom/mediatek/ims/ImsConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsConfigManager;->getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCallCount(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 226
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->getCurrentCallCount(I)I

    move-result v0

    return v0
.end method

.method public getImsNetworkState(I)[I
    .locals 3
    .param p1, "capability"    # I

    .line 231
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getImsNetworkState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->getImsNetworkState(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getImsPdnStatus(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 354
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    .line 355
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 357
    .local v0, "permissionCheck":I
    if-nez v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsService;->getImsPdnStatus(I)I

    move-result v1

    return v1

    .line 360
    :cond_0
    const-string v1, "getImsPdnStatus(), error, no READ_PRIVILEGED_PHONE_STATE permission"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/MtkImsService;->loge(Ljava/lang/String;)V

    .line 361
    const/4 v1, -0x1

    return v1
.end method

.method public getImsRegUriType(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 130
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getImsRegUriType"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->getImsRegUriType(I)I

    move-result v0

    return v0
.end method

.method public getImsState(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 118
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getImsState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->getImsState(I)I

    move-result v0

    return v0
.end method

.method public getModemMultiImsCount()I
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getModemMultiImsCount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsService;->getModemMultiImsCount()I

    move-result v0

    return v0
.end method

.method public getMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;
    .locals 1
    .param p1, "phoneId"    # I

    .line 203
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->onGetMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getPendingMtkCallSession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->onGetPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getWfcRegErrorCode(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getWfcRegErrorCode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->getWfcRegErrorCode(I)I

    move-result v0

    return v0
.end method

.method public hangupAllCall(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 142
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "hangupAllCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->onHangupAllCall(I)V

    .line 146
    return-void
.end method

.method public isCameraAvailable()Z
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "isCameraAvailable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isCameraAvailable()Z

    move-result v0

    return v0
.end method

.method public registerProprietaryImsListener(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p3, "mtklistener"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .param p4, "notifyOnly"    # Z

    .line 293
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "registerProprietaryImsListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    const/4 v5, 0x1

    move v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/ims/ImsService;->onAddRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V

    .line 298
    return-void
.end method

.method public runGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;
    .locals 9
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "phoneId"    # I

    .line 209
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "runGbaAuthentication"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/ims/ImsService;->onRunGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    return-object v0
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z
    .param p7, "pdu"    # [B

    .line 275
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "sendSms"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v4, v0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    move v5, p1

    move v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/mediatek/ims/ImsService;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 279
    return-void
.end method

.method public setCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callNum"    # Ljava/lang/String;
    .param p4, "seqNum"    # I
    .param p5, "toNumber"    # Ljava/lang/String;
    .param p6, "isAllow"    # Z
    .param p7, "cause"    # I

    .line 92
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const-string v3, "setCallIndication"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v4, v0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/mediatek/ims/ImsService;->onSetCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 97
    return-void
.end method

.method public setImsPreCallInfo(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "fromUri"    # Ljava/lang/String;
    .param p5, "extraHeaders"    # Ljava/util/Map;
    .param p6, "location"    # [Ljava/lang/String;

    .line 346
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const-string v3, "setImsPreCallInfo"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v4, v0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    move-object/from16 v9, p5

    check-cast v9, Ljava/util/HashMap;

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/ims/ImsService;->setImsPreCallInfo(IILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public setMTRedirect(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 302
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setMTRedirect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->setMTRedirect(IZ)V

    .line 306
    return-void
.end method

.method public setSipHeader(ILjava/util/Map;Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "extraHeaders"    # Ljava/util/Map;
    .param p3, "fromUri"    # Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "changeEnabledCapabilities"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    move-object v1, p2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1, p3}, Lcom/mediatek/ims/ImsService;->setSipHeader(ILjava/util/HashMap;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public setWfcRegErrorCode(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I

    .line 331
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setWfcRegErrorCode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->setWfcRegErrorCode(II)V

    .line 335
    return-void
.end method

.method public updateRadioState(II)V
    .locals 3
    .param p1, "radioState"    # I
    .param p2, "phoneId"    # I

    .line 166
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateRadioState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->updateRadioState(II)V

    .line 170
    return-void
.end method
