.class public Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;
.super Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
.source "MtkDynamicImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkDynamicImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsEventCallbackExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkDynamicImsService;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/MtkDynamicImsService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkDynamicImsService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 372
    iput-object p1, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    .line 373
    invoke-direct {p0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;-><init>(Landroid/os/Handler;)V

    .line 374
    return-void
.end method

.method static synthetic lambda$onDeregistered$1(Lcom/mediatek/ims/ImsService;)V
    .locals 3
    .param p0, "srv"    # Lcom/mediatek/ims/ImsService;

    .line 415
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v0

    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/ImsService;->notifyRcsCapabilityChanged(ILandroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 417
    const-string v0, "MtkDynamicImsService"

    const-string v1, "remove uce capability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$onRegistered$0(Lcom/mediatek/ims/ImsService;)V
    .locals 3
    .param p0, "srv"    # Lcom/mediatek/ims/ImsService;

    .line 396
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    .line 397
    .local v0, "capabilities":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 398
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/ImsService;->notifyRcsCapabilityChanged(ILandroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 399
    const-string v1, "MtkDynamicImsService"

    const-string v2, "add uce capability"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCallComposerChanged(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 429
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    .line 430
    .local v0, "srv":Lcom/mediatek/ims/ImsService;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->notifyCcCapabilityChange(I)V

    .line 434
    :cond_0
    return-void
.end method

.method public onDeregistered(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 405
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    .line 406
    .local v0, "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v0, :cond_1

    .line 407
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 408
    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v1

    .line 409
    .local v1, "srv":Lcom/mediatek/ims/ImsService;
    if-eqz v1, :cond_0

    .line 410
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/mediatek/ims/ImsService;->updateRoiRegistration(IZ[Ljava/lang/String;)V

    .line 414
    .end local v1    # "srv":Lcom/mediatek/ims/ImsService;
    :cond_0
    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 420
    :cond_1
    return-void
.end method

.method public onRegistered(I)V
    .locals 7
    .param p1, "mode"    # I

    .line 378
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    .line 379
    .local v0, "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v0, :cond_3

    .line 380
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 381
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->getUpdateRcsFeatureTagState()Z

    move-result v2

    .line 382
    .local v2, "state":Z
    if-nez v2, :cond_0

    .line 383
    iget-object v3, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-static {v3}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Lcom/mediatek/ims/MtkDynamicImsService;)V

    .line 385
    .end local v2    # "state":Z
    :cond_0
    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->readConfiguraion()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v3

    .line 388
    .local v3, "config":Lcom/mediatek/ims/rcsua/Configuration;
    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v4

    .line 389
    .local v4, "srv":Lcom/mediatek/ims/ImsService;
    if-eqz v4, :cond_2

    .line 390
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v5

    invoke-virtual {v3}, Lcom/mediatek/ims/rcsua/Configuration;->getPAssociatedUri()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6}, Lcom/mediatek/ims/ImsService;->updateRoiRegistration(IZ[Ljava/lang/String;)V

    .line 395
    .end local v3    # "config":Lcom/mediatek/ims/rcsua/Configuration;
    .end local v4    # "srv":Lcom/mediatek/ims/ImsService;
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 401
    :cond_3
    return-void
.end method

.method public onReregistered(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 424
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Lcom/mediatek/ims/MtkDynamicImsService;)V

    .line 425
    return-void
.end method
