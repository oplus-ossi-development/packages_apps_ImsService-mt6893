.class public Lcom/mediatek/ims/rcs/MtkSipDelegate;
.super Ljava/lang/Object;
.source "MtkSipDelegate.java"

# interfaces
.implements Landroid/telephony/ims/stub/SipDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;,
        Lcom/mediatek/ims/rcs/MtkSipDelegate$SipCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[SR-IMS][MtkSipDelegate]"


# instance fields
.field private delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

.field private delegateRequest:Landroid/telephony/ims/DelegateRequest;

.field private everRegistered:Z

.field private mContext:Landroid/content/Context;

.field private messageCallback:Landroid/telephony/ims/DelegateMessageCallback;

.field private regState:Landroid/telephony/ims/DelegateRegistrationState;

.field private sendingTransactions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stateCallback:Landroid/telephony/ims/DelegateStateCallback;

.field private subId:I

.field private uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "request"    # Landroid/telephony/ims/DelegateRequest;
    .param p4, "sc"    # Landroid/telephony/ims/DelegateStateCallback;
    .param p5, "mc"    # Landroid/telephony/ims/DelegateMessageCallback;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->sendingTransactions:Ljava/util/Set;

    .line 70
    const-string v0, "DelegateRequest should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    const-string v0, "DelegateStateCallback should not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string v0, "DelegateMessageCallback should not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->mContext:Landroid/content/Context;

    .line 75
    iput p2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->subId:I

    .line 76
    iput-object p3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateRequest:Landroid/telephony/ims/DelegateRequest;

    .line 78
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 79
    .local v0, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    invoke-virtual {p3}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, "feature":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 81
    .end local v2    # "feature":Ljava/lang/String;
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 83
    iput-object p4, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->stateCallback:Landroid/telephony/ims/DelegateStateCallback;

    .line 84
    iput-object p5, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->messageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    .line 85
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 86
    if-eqz v1, :cond_1

    .line 87
    new-instance v2, Lcom/mediatek/ims/rcs/MtkSipDelegate$SipCallback;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/rcs/MtkSipDelegate$SipCallback;-><init>(Lcom/mediatek/ims/rcs/MtkSipDelegate;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->registerSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V

    goto :goto_1

    .line 89
    :cond_1
    const-string v1, "MtkSipDelegate >> UaServiceManager not ready"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logE(Ljava/lang/String;)V

    .line 91
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcs/MtkSipDelegate;)Landroid/telephony/ims/DelegateMessageCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 65
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->messageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcs/MtkSipDelegate;[B)Landroid/telephony/ims/SipMessage;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;
    .param p1, "x1"    # [B

    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->encodeSipMessage([B)Landroid/telephony/ims/SipMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcs/MtkSipDelegate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcs/MtkSipDelegate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcs/MtkSipDelegate;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 65
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->sendingTransactions:Ljava/util/Set;

    return-object v0
.end method

.method private encodeSipMessage([B)Landroid/telephony/ims/SipMessage;
    .locals 11
    .param p1, "rawData"    # [B

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "sipMessage":Landroid/telephony/ims/SipMessage;
    const/4 v1, 0x0

    .line 469
    .local v1, "startLine":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "hdrBeginPos":I
    const/4 v3, 0x0

    .local v3, "hdrEndPos":I
    const/4 v4, 0x0

    .line 471
    .local v4, "bodyBeginPos":I
    new-instance v5, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;

    invoke-direct {v5, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;-><init>([B)V

    .line 472
    .local v5, "reader":Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->read()[C

    move-result-object v6

    .line 473
    .local v6, "line":[C
    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    .line 474
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->getNextPosition()I

    move-result v2

    .line 475
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    move-object v1, v7

    .line 476
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    :cond_0
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->read()[C

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_1

    .line 478
    array-length v7, v6

    if-nez v7, :cond_0

    .line 479
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->getCurrPosition()I

    move-result v3

    .line 480
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->getNextPosition()I

    move-result v4

    .line 486
    :cond_1
    if-eqz v1, :cond_3

    if-lez v2, :cond_3

    if-lez v3, :cond_3

    if-le v3, v2, :cond_3

    .line 487
    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v2

    invoke-direct {v7, p1, v2, v8}, Ljava/lang/String;-><init>([BII)V

    .line 488
    .local v7, "headerSection":Ljava/lang/String;
    array-length v8, p1

    sub-int/2addr v8, v4

    .line 489
    .local v8, "bodyLength":I
    new-array v9, v8, [B

    .line 490
    .local v9, "body":[B
    if-lez v8, :cond_2

    .line 491
    const/4 v10, 0x0

    invoke-static {p1, v4, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    :cond_2
    new-instance v10, Landroid/telephony/ims/SipMessage;

    invoke-direct {v10, v1, v7, v9}, Landroid/telephony/ims/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    move-object v0, v10

    .line 495
    .end local v7    # "headerSection":Ljava/lang/String;
    .end local v8    # "bodyLength":I
    .end local v9    # "body":[B
    :cond_3
    return-object v0
.end method

.method private extractUserParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, "user":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "start":I
    const/4 v2, 0x0

    .line 639
    .local v2, "end":I
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 642
    :cond_0
    const-string v3, "sip:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "tel:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 643
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 645
    :cond_2
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 646
    if-gez v2, :cond_3

    .line 647
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 650
    :cond_3
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 652
    goto :goto_0

    .line 651
    :catch_0
    move-exception v3

    .line 654
    :goto_0
    return-object v0

    .line 640
    :cond_4
    :goto_1
    return-object v0
.end method

.method private formatIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 658
    move-object v0, p1

    .line 660
    .local v0, "result":Ljava/lang/String;
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 661
    .local v1, "startIdx":I
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 662
    .local v2, "endIdx":I
    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    if-le v2, v1, :cond_0

    .line 663
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 666
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$notifyFeatureTagStateUnprovisioned$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "ft"    # Ljava/lang/String;

    .line 394
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$notifyFeatureTagStateUnprovisioned$1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "ft"    # Ljava/lang/String;

    .line 396
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipDelegate]"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipDelegate]"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipDelegate]"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void
.end method

.method private notifyConfigurationChanged(Lcom/mediatek/ims/rcsua/Configuration;)V
    .locals 25
    .param p1, "configuration"    # Lcom/mediatek/ims/rcsua/Configuration;

    .line 138
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConfigurationChanged >> configuratiion["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    .line 139
    iget-object v1, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 140
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 141
    .local v3, "publicGruuUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPublicGruu()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "gruu":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 143
    const-string v5, "sip:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    :cond_0
    const/4 v5, 0x0

    const-string v6, "sip"

    invoke-static {v6, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 147
    :cond_1
    const/16 v13, 0x13c4

    .line 148
    .local v13, "localTxPort":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getViaPort()I

    move-result v14

    .line 149
    .local v14, "localRxPort":I
    const/4 v15, 0x0

    .line 150
    .local v15, "remoteTxPort":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPortS()I

    move-result v16

    .line 151
    .local v16, "remoteRxPort":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getSecurityVerify()Ljava/lang/String;

    move-result-object v17

    .line 154
    .local v17, "security":Ljava/lang/String;
    iget-object v5, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    if-nez v5, :cond_2

    .line 155
    const-wide/16 v5, 0x0

    move-wide/from16 v18, v5

    .local v5, "version":J
    goto :goto_0

    .line 157
    .end local v5    # "version":J
    :cond_2
    invoke-virtual {v5}, Landroid/telephony/ims/SipDelegateConfiguration;->getVersion()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    move-wide/from16 v18, v5

    .line 160
    .local v18, "version":J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getLocalAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->formatIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 161
    .local v20, "localAddr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getProxyAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->formatIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 163
    .local v21, "serverAddr":Ljava/lang/String;
    new-instance v5, Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    const/4 v10, 0x1

    new-instance v11, Ljava/net/InetSocketAddress;

    .line 165
    invoke-static/range {v20 .. v20}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getLocalPort()I

    move-result v7

    invoke-direct {v11, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance v12, Ljava/net/InetSocketAddress;

    .line 167
    invoke-static/range {v21 .. v21}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getProxyPort()I

    move-result v7

    invoke-direct {v12, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v7, v5

    move-wide/from16 v8, v18

    invoke-direct/range {v7 .. v12}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    move-object v12, v5

    .line 170
    .local v12, "builder":Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->preferredImpu(Lcom/mediatek/ims/rcsua/Configuration;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getIMPU()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    .line 171
    .local v11, "impu":Ljava/lang/String;
    invoke-virtual {v12, v11}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getIMPI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPrivateUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 173
    invoke-direct {v0, v11}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->extractUserParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipContactUserParameter(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getHomeDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setHomeDomain(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getWholePAssociatedUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAssociatedUriHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPAccessNetworkInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPLastAccessNetworkInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPlaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getWholeServiceRoute()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipServiceRouteHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v10

    new-instance v9, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    move-object v5, v9

    move v6, v13

    move v7, v14

    move v8, v13

    move-object v2, v9

    move v9, v15

    move-object/from16 v22, v4

    move-object v4, v10

    .end local v4    # "gruu":Ljava/lang/String;
    .local v22, "gruu":Ljava/lang/String;
    move/from16 v10, v16

    move-object/from16 v23, v11

    .end local v11    # "impu":Ljava/lang/String;
    .local v23, "impu":Ljava/lang/String;
    move v11, v15

    move-object/from16 v24, v12

    .end local v12    # "builder":Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .local v24, "builder":Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    move-object/from16 v12, v17

    invoke-direct/range {v5 .. v12}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;-><init>(IIIIIILjava/lang/String;)V

    .line 179
    invoke-virtual {v4, v2}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipUserAgentHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v3}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicGruuUri(Landroid/net/Uri;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    const/16 v4, 0x4b0

    .line 184
    invoke-virtual {v2, v4}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setMaxUdpPayloadSizeBytes(I)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    .line 185
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setImei(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 186
    invoke-virtual {v2, v4}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipCompactFormEnabled(Z)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 188
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyConfigurationChanged >> report configuraiton{version["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 191
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getVersion()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "],transport["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 192
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getTransportType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "],localAddr["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 193
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "],serverAddr["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 194
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getSipServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "],ipsecConfig["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 195
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getIpSecConfiguration()Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "],contactUserParam["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 196
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getSipContactUserParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-direct {v0, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    .line 198
    iget-object v2, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->stateCallback:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-interface {v2, v4}, Landroid/telephony/ims/DelegateStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    .line 199
    return-void
.end method

.method private notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ims/DelegateRegistrationState;

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFeatureTagsRegistrationChanged >> state["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->stateCallback:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 409
    return-void
.end method


# virtual methods
.method public cleanupSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 119
    const-string v0, "callId should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupSession >> callId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method getDeregisteringFeatureTags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v0

    .line 417
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 416
    return-object v0
.end method

.method getFeatureTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getStateCallback()Landroid/telephony/ims/DelegateStateCallback;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->stateCallback:Landroid/telephony/ims/DelegateStateCallback;

    return-object v0
.end method

.method notifyFeatureTagStateProvisioned(Ljava/lang/String;)Z
    .locals 7
    .param p1, "feature"    # Ljava/lang/String;

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "needUpdate":Z
    const/4 v1, 0x0

    .line 354
    .local v1, "changed":Z
    new-instance v2, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 355
    .local v2, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/FeatureTagState;

    .line 356
    .local v4, "dereg":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 357
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 359
    :cond_0
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 360
    .end local v4    # "dereg":Landroid/telephony/ims/FeatureTagState;
    goto :goto_0

    .line 361
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/FeatureTagState;

    .line 362
    .restart local v4    # "dereg":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 363
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 364
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 365
    const/4 v1, 0x1

    goto :goto_2

    .line 367
    :cond_2
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 369
    .end local v4    # "dereg":Landroid/telephony/ims/FeatureTagState;
    :goto_2
    goto :goto_1

    .line 370
    :cond_3
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 371
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 372
    if-eqz v1, :cond_4

    .line 373
    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v3

    .line 374
    .local v3, "state":Landroid/telephony/ims/DelegateRegistrationState;
    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 375
    iput-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 377
    .end local v3    # "state":Landroid/telephony/ims/DelegateRegistrationState;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyFeatureTagStateProvisioned: feature["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], changed["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], needUpdate["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    .line 379
    return v0
.end method

.method notifyFeatureTagStateUnprovisioned(Ljava/lang/String;)Z
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFeatureTagStateUnprovisioned: feature["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 385
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 386
    :cond_1
    :goto_0
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 387
    .local v0, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/FeatureTagState;

    .line 388
    .local v2, "dereg":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 389
    .end local v2    # "dereg":Landroid/telephony/ims/FeatureTagState;
    goto :goto_1

    .line 390
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/FeatureTagState;

    .line 391
    .restart local v2    # "dereg":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 392
    .end local v2    # "dereg":Landroid/telephony/ims/FeatureTagState;
    goto :goto_2

    .line 393
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 394
    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/rcs/MtkSipDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 393
    invoke-virtual {v0, v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteringFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 395
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 396
    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/rcs/MtkSipDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 395
    invoke-virtual {v0, v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 397
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 398
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 399
    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 400
    const/4 v1, 0x1

    return v1
.end method

.method public notifyMessageReceiveError(Ljava/lang/String;I)V
    .locals 2
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 133
    const-string v0, "viaTransactionId should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMessageReceiveError >> viaTransactionId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], reason["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public notifyMessageReceived(Ljava/lang/String;)V
    .locals 2
    .param p1, "viaTransactionId"    # Ljava/lang/String;

    .line 127
    const-string v0, "viaTransactionId should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMessageReceived >> viaTransactionId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public notifyRegistrationDeregistered()V
    .locals 7

    .line 320
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 322
    .local v0, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v1

    .line 323
    .local v1, "remainStates":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/FeatureTagState;

    .line 324
    .local v3, "feature":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 325
    .end local v3    # "feature":Landroid/telephony/ims/FeatureTagState;
    goto :goto_0

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/FeatureTagState;

    .line 327
    .restart local v3    # "feature":Landroid/telephony/ims/FeatureTagState;
    const/4 v4, 0x2

    .line 328
    .local v4, "reason":I
    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 329
    const/4 v4, 0x1

    .line 330
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 331
    .end local v3    # "feature":Landroid/telephony/ims/FeatureTagState;
    .end local v4    # "reason":I
    goto :goto_1

    .line 332
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 333
    .local v3, "feature":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 334
    .end local v3    # "feature":Ljava/lang/String;
    goto :goto_2

    .line 335
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 336
    .restart local v3    # "feature":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 337
    .end local v3    # "feature":Ljava/lang/String;
    goto :goto_3

    .line 339
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v2

    .line 341
    .local v2, "state":Landroid/telephony/ims/DelegateRegistrationState;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 343
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2, v3}, Landroid/telephony/ims/DelegateRegistrationState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 344
    const-string v3, "feature tag reg state not changed"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    goto :goto_4

    .line 346
    :cond_5
    const-string v3, "feature tag reg state changed"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    .line 347
    iput-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 349
    :goto_4
    return-void
.end method

.method notifyRegistrationDeregistering(I)V
    .locals 7
    .param p1, "reason"    # I

    .line 296
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 298
    .local v0, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v1

    .line 299
    .local v1, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    .local v3, "feature":Ljava/lang/String;
    invoke-virtual {v0, v3, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 301
    .end local v3    # "feature":Ljava/lang/String;
    goto :goto_0

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v1

    .line 303
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 304
    .restart local v3    # "feature":Ljava/lang/String;
    invoke-virtual {v0, v3, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 305
    .end local v3    # "feature":Ljava/lang/String;
    goto :goto_1

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v2

    .line 307
    .local v2, "ftStates":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/FeatureTagState;

    .line 308
    .local v4, "ftState":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 309
    .end local v4    # "ftState":Landroid/telephony/ims/FeatureTagState;
    goto :goto_2

    .line 310
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v2

    .line 311
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/FeatureTagState;

    .line 312
    .restart local v4    # "ftState":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 313
    .end local v4    # "ftState":Landroid/telephony/ims/FeatureTagState;
    goto :goto_3

    .line 315
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 316
    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 317
    return-void
.end method

.method notifyRegistrationRegistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 10
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 212
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->readImsConfiguration()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v0

    .line 213
    .local v0, "configuration":Lcom/mediatek/ims/rcsua/Configuration;
    if-nez v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    new-instance v1, Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Configuration;->getRegRcsFeatureTags()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/mediatek/ims/rcsua/Capability;-><init>(J)V

    .line 218
    .local v1, "registered":Lcom/mediatek/ims/rcsua/Capability;
    new-instance v2, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 220
    .local v2, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v3

    .line 221
    .local v3, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v4}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 222
    .local v5, "feature":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 223
    invoke-virtual {v2, v5}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 224
    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 226
    .end local v5    # "feature":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 227
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 228
    .restart local v5    # "feature":Ljava/lang/String;
    invoke-virtual {v2, v5, v6}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 229
    .end local v5    # "feature":Ljava/lang/String;
    goto :goto_1

    .line 231
    :cond_3
    iget-object v4, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v4}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v3

    .line 232
    iget-object v4, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v4}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 233
    .restart local v5    # "feature":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 234
    invoke-virtual {v2, v5}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 235
    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 237
    .end local v5    # "feature":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 238
    :cond_5
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 239
    .restart local v5    # "feature":Ljava/lang/String;
    invoke-virtual {v2, v5, v6}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 240
    .end local v5    # "feature":Ljava/lang/String;
    goto :goto_3

    .line 242
    :cond_6
    iget-object v4, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v4}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v4

    .line 243
    .local v4, "ftStates":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    iget-object v5, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v5}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ims/FeatureTagState;

    .line 245
    .local v6, "feature":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 246
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 247
    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 249
    .end local v6    # "feature":Landroid/telephony/ims/FeatureTagState;
    :cond_7
    goto :goto_4

    .line 250
    :cond_8
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ims/FeatureTagState;

    .line 251
    .local v6, "dereg":Landroid/telephony/ims/FeatureTagState;
    const/4 v7, 0x2

    .line 252
    .local v7, "reason":I
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_9

    .line 253
    const/4 v7, 0x1

    .line 254
    :cond_9
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 255
    .end local v6    # "dereg":Landroid/telephony/ims/FeatureTagState;
    .end local v7    # "reason":I
    goto :goto_5

    .line 257
    :cond_a
    iget-object v5, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v5}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v4

    .line 258
    iget-object v5, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v5}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ims/FeatureTagState;

    .line 259
    .local v6, "ftState":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 260
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 261
    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 263
    .end local v6    # "ftState":Landroid/telephony/ims/FeatureTagState;
    :cond_b
    goto :goto_6

    .line 267
    :cond_c
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ims/FeatureTagState;

    .line 268
    .restart local v6    # "ftState":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 269
    .end local v6    # "ftState":Landroid/telephony/ims/FeatureTagState;
    goto :goto_7

    .line 274
    :cond_d
    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v5

    .line 280
    .local v5, "state":Landroid/telephony/ims/DelegateRegistrationState;
    invoke-virtual {v5}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 281
    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyConfigurationChanged(Lcom/mediatek/ims/rcsua/Configuration;)V

    .line 284
    :cond_e
    iget-object v6, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v5, v6}, Landroid/telephony/ims/DelegateRegistrationState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 285
    const-string v6, "feature tag reg state not changed"

    invoke-direct {p0, v6}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    goto :goto_8

    .line 288
    :cond_f
    invoke-direct {p0, v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 289
    iput-object v5, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 292
    :goto_8
    return-void
.end method

.method notifyRegistrationRegistering()V
    .locals 2

    .line 202
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 204
    .local v0, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteringFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 206
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 208
    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 209
    return-void
.end method

.method preferredImpu(Lcom/mediatek/ims/rcsua/Configuration;)Ljava/lang/String;
    .locals 6
    .param p1, "configuration"    # Lcom/mediatek/ims/rcsua/Configuration;

    .line 618
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPAssociatedUri()[Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "pAssociatedUris":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 621
    .local v1, "impu":Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 622
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 624
    .local v4, "uri":Ljava/lang/String;
    const-string v5, "sip:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    .line 625
    move-object v1, v4

    goto :goto_1

    .line 626
    :cond_0
    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    .line 627
    move-object v1, v4

    .line 622
    .end local v4    # "uri":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 632
    :cond_2
    return-object v1
.end method

.method public sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .locals 2
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;
    .param p2, "configVersion"    # J

    .line 95
    const-string v0, "message should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage >> message["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], config["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 100
    if-nez v0, :cond_0

    .line 101
    const-string v0, "sendMessage >> UaServiceManager not ready"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->sendSipMessage(Landroid/telephony/ims/SipMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipDelegate$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate$1;-><init>(Lcom/mediatek/ims/rcs/MtkSipDelegate;Landroid/telephony/ims/SipMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->sendingTransactions:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    :goto_0
    return-void
.end method
