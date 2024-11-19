.class public Lcom/mediatek/ims/feature/MtkMmTelFeature;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "MtkMmTelFeature.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DELAY_IMS_SERVICE_IMPL_QUERY_MS:I = 0x1388

.field public static final FEATURE_DISABLED:I = 0x0

.field public static final FEATURE_ENABLED:I = 0x1

.field public static final FEATURE_TYPE_CALLCOMPOSER_OVER_LTE:I = 0x9

.field public static final FEATURE_TYPE_CALLCOMPOSER_OVER_NR:I = 0xb

.field public static final FEATURE_TYPE_CALLCOMPOSER_OVER_WIFI:I = 0xa

.field public static final FEATURE_TYPE_UNKNOWN:I = -0x1

.field public static final FEATURE_TYPE_UT_OVER_LTE:I = 0x4

.field public static final FEATURE_TYPE_UT_OVER_WIFI:I = 0x5

.field public static final FEATURE_TYPE_VIDEO_OVER_LTE:I = 0x1

.field public static final FEATURE_TYPE_VIDEO_OVER_NR:I = 0x7

.field public static final FEATURE_TYPE_VIDEO_OVER_WIFI:I = 0x3

.field public static final FEATURE_TYPE_VOICE_CROSS_SIM:I = 0x8

.field public static final FEATURE_TYPE_VOICE_OVER_LTE:I = 0x0

.field public static final FEATURE_TYPE_VOICE_OVER_NR:I = 0x6

.field public static final FEATURE_TYPE_VOICE_OVER_WIFI:I = 0x2

.field public static final FEATURE_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MtkMmTelFeature"

.field private static final MAXMUIM_IMS_SERVICE_IMPL_RETRY:I = 0x3

.field private static final PROPERTY_SYS_VODATA_SUPPORT:Ljava/lang/String; = "ro.vendor.vodata_support"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final REG_TECH_TO_NET_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WAIT_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mImsServiceCallback:Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

.field private mImsServiceImpl:Lcom/mediatek/ims/ImsService;

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 111
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 112
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->DEBUG:Z

    .line 124
    new-instance v0, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xd

    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 127
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 130
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 129
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x14

    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 131
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 133
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 232
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 169
    new-instance v1, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;-><init>(Lcom/mediatek/ims/feature/MtkMmTelFeature;)V

    iput-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceCallback:Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    .line 233
    iput p1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "retry":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-nez v2, :cond_1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 237
    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 239
    if-nez v2, :cond_0

    .line 240
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsService is not initialized yet. Query later - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 241
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, "er":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get ImsService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->loge(Ljava/lang/String;)V

    .line 246
    .end local v2    # "er":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 248
    :cond_1
    if-eqz v2, :cond_2

    .line 249
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceCallback:Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-virtual {v2, p1, v0}, Lcom/mediatek/ims/ImsService;->setMmTelFeatureCallback(ILcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize mContext "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " slotId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->initialize(Landroid/content/Context;I)V

    .line 252
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->setFeatureState(I)V

    .line 254
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] MtkMmTelFeature created"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/feature/MtkMmTelFeature;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/feature/MtkMmTelFeature;

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/feature/MtkMmTelFeature;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/feature/MtkMmTelFeature;
    .param p1, "x1"    # Landroid/content/Context;

    .line 106
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/feature/MtkMmTelFeature;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/feature/MtkMmTelFeature;
    .param p1, "x1"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 106
    sget-boolean v0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->DEBUG:Z

    return v0
.end method

.method private convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 6
    .param p1, "enabledFeatures"    # [I

    .line 325
    array-length v0, p1

    new-array v0, v0, [Z

    .line 326
    .local v0, "featuresEnabled":[Z
    const/4 v1, 0x0

    .line 327
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-gt v1, v3, :cond_2

    array-length v5, p1

    if-ge v1, v5, :cond_2

    .line 328
    aget v3, p1, v1

    if-ne v3, v1, :cond_0

    .line 329
    aput-boolean v4, v0, v1

    goto :goto_1

    .line 330
    :cond_0
    aget v3, p1, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 332
    aput-boolean v2, v0, v1

    .line 327
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    .line 336
    .local v1, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    aget-boolean v2, v0, v2

    const/4 v5, 0x2

    if-nez v2, :cond_3

    aget-boolean v2, v0, v5

    if-eqz v2, :cond_4

    .line 339
    :cond_3
    invoke-virtual {v1, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 341
    :cond_4
    aget-boolean v2, v0, v4

    if-nez v2, :cond_5

    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    if-eqz v2, :cond_6

    .line 344
    :cond_5
    invoke-virtual {v1, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 346
    :cond_6
    const/4 v2, 0x4

    aget-boolean v4, v0, v2

    if-nez v4, :cond_7

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_8

    .line 349
    :cond_7
    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 351
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertCapabilities - capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 352
    return-object v1
.end method

.method private convertCapability(II)I
    .locals 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 356
    const/4 v0, -0x1

    .line 357
    .local v0, "capConverted":I
    if-nez p2, :cond_0

    .line 358
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 369
    :sswitch_0
    const/16 v0, 0x9

    goto :goto_0

    .line 366
    :sswitch_1
    const/4 v0, 0x4

    .line 367
    goto :goto_0

    .line 363
    :sswitch_2
    const/4 v0, 0x1

    .line 364
    goto :goto_0

    .line 360
    :sswitch_3
    const/4 v0, 0x0

    .line 361
    nop

    .line 370
    :goto_0
    goto :goto_4

    .line 372
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 373
    sparse-switch p1, :sswitch_data_1

    goto :goto_1

    .line 384
    :sswitch_4
    const/16 v0, 0xa

    goto :goto_1

    .line 381
    :sswitch_5
    const/4 v0, 0x5

    .line 382
    goto :goto_1

    .line 378
    :sswitch_6
    const/4 v0, 0x3

    .line 379
    goto :goto_1

    .line 375
    :sswitch_7
    const/4 v0, 0x2

    .line 376
    nop

    .line 385
    :goto_1
    goto :goto_4

    .line 387
    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 388
    sparse-switch p1, :sswitch_data_2

    goto :goto_2

    .line 396
    :sswitch_8
    const/16 v0, 0xb

    goto :goto_2

    .line 393
    :sswitch_9
    const/4 v0, 0x7

    .line 394
    goto :goto_2

    .line 390
    :sswitch_a
    const/4 v0, 0x6

    .line 391
    nop

    .line 397
    :goto_2
    goto :goto_4

    .line 399
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    const/4 v2, 0x0

    .line 400
    const-string v3, "ro.vendor.vodata_support"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 401
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 403
    :pswitch_0
    const/16 v0, 0x8

    .line 404
    :goto_3
    goto :goto_4

    .line 407
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to convertCapability, cap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tech:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->loge(Ljava/lang/String;)V

    .line 409
    :goto_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x4 -> :sswitch_5
        0x10 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x10 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getSmsFormat()Ljava/lang/String;
    .locals 1

    .line 766
    invoke-virtual {p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkMmTelFeature"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkMmTelFeature"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkMmTelFeature"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 21
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 471
    move-object/from16 v8, p0

    if-nez p1, :cond_0

    .line 472
    return-void

    .line 475
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    .line 476
    .local v0, "imsConfig":Lcom/android/ims/internal/IImsConfig;
    const/4 v9, 0x0

    .line 477
    .local v9, "callComposerEnabled":Z
    const/4 v1, 0x0

    .line 479
    .local v1, "callComposerDisabled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v1

    .end local v1    # "callComposerDisabled":Z
    .local v11, "callComposerDisabled":Z
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, " radioTech: "

    const-string v15, "changeEnabledCapabilities - cap: "

    const/16 v6, 0x10

    const/16 v16, -0x1

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 480
    .local v7, "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v5, v1

    .line 481
    .local v5, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-direct {v8, v1, v2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->convertCapability(II)I

    move-result v1

    move v4, v1

    .line 482
    .local v4, "capConverted":I
    sget-object v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 483
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 482
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v1

    .line 484
    .local v3, "radioTechConverted":I
    sget-boolean v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 488
    :cond_1
    if-gez v4, :cond_2

    .line 489
    goto :goto_0

    .line 491
    :cond_2
    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 492
    const/4 v1, 0x1

    move v11, v1

    move/from16 v17, v9

    .end local v11    # "callComposerDisabled":Z
    .restart local v1    # "callComposerDisabled":Z
    goto :goto_1

    .line 494
    .end local v1    # "callComposerDisabled":Z
    .restart local v11    # "callComposerDisabled":Z
    :cond_3
    const/4 v14, 0x0

    new-instance v15, Lcom/mediatek/ims/feature/MtkMmTelFeature$3;

    move-object v1, v15

    move-object/from16 v2, p0

    move v6, v3

    .end local v3    # "radioTechConverted":I
    .local v6, "radioTechConverted":I
    move v3, v4

    move v12, v4

    .end local v4    # "capConverted":I
    .local v12, "capConverted":I
    move v4, v6

    move-object v13, v5

    .end local v5    # "latch":Ljava/util/concurrent/CountDownLatch;
    .local v13, "latch":Ljava/util/concurrent/CountDownLatch;
    move/from16 v17, v9

    move v9, v6

    .end local v6    # "radioTechConverted":I
    .local v9, "radioTechConverted":I
    .local v17, "callComposerEnabled":Z
    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/ims/feature/MtkMmTelFeature$3;-><init>(Lcom/mediatek/ims/feature/MtkMmTelFeature;IILjava/util/concurrent/CountDownLatch;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)V

    invoke-interface {v0, v12, v9, v14, v15}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 511
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v13, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 513
    .end local v7    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .end local v9    # "radioTechConverted":I
    .end local v12    # "capConverted":I
    .end local v13    # "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_1
    move/from16 v9, v17

    goto/16 :goto_0

    .line 515
    .end local v17    # "callComposerEnabled":Z
    .local v9, "callComposerEnabled":Z
    :cond_4
    move/from16 v17, v9

    .end local v9    # "callComposerEnabled":Z
    .restart local v17    # "callComposerEnabled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 516
    .restart local v7    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v10, v1

    .line 517
    .local v10, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-direct {v8, v1, v2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->convertCapability(II)I

    move-result v1

    move v12, v1

    .line 518
    .restart local v12    # "capConverted":I
    sget-object v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 519
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 518
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v13, v1

    .line 520
    .local v13, "radioTechConverted":I
    sget-boolean v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 524
    :cond_5
    if-gez v12, :cond_6

    .line 525
    goto :goto_2

    .line 527
    :cond_6
    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    if-ne v1, v6, :cond_7

    .line 528
    const/4 v1, 0x1

    move/from16 v17, v1

    move/from16 v20, v6

    move-object/from16 v18, v9

    move-object/from16 v19, v14

    const-wide/16 v2, 0x7d0

    move v14, v5

    .end local v17    # "callComposerEnabled":Z
    .local v1, "callComposerEnabled":Z
    goto :goto_3

    .line 530
    .end local v1    # "callComposerEnabled":Z
    .restart local v17    # "callComposerEnabled":Z
    :cond_7
    new-instance v4, Lcom/mediatek/ims/feature/MtkMmTelFeature$4;

    move-object v1, v4

    move-object/from16 v2, p0

    move v3, v12

    move-object/from16 v18, v9

    move-object v9, v4

    move v4, v13

    move-object/from16 v19, v14

    move v14, v5

    move-object v5, v10

    move/from16 v20, v6

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/ims/feature/MtkMmTelFeature$4;-><init>(Lcom/mediatek/ims/feature/MtkMmTelFeature;IILjava/util/concurrent/CountDownLatch;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)V

    invoke-interface {v0, v12, v13, v14, v9}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 547
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v10, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 549
    .end local v7    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .end local v10    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v12    # "capConverted":I
    .end local v13    # "radioTechConverted":I
    :goto_3
    move v5, v14

    move-object/from16 v9, v18

    move-object/from16 v14, v19

    move/from16 v6, v20

    goto/16 :goto_2

    .line 551
    :cond_8
    const-string v1, "+g.gsma.callcomposer"

    if-eqz v17, :cond_9

    .line 552
    :try_start_2
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v2

    .line 553
    .local v2, "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v2, :cond_a

    .line 554
    new-instance v3, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v3, v1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    goto :goto_4

    .line 556
    .end local v2    # "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    :cond_9
    if-eqz v11, :cond_a

    .line 557
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v2

    .line 558
    .restart local v2    # "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v2, :cond_b

    .line 559
    new-instance v3, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v3, v1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 556
    .end local v2    # "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    :cond_a
    :goto_4
    nop

    .line 565
    .end local v0    # "imsConfig":Lcom/android/ims/internal/IImsConfig;
    .end local v11    # "callComposerDisabled":Z
    .end local v17    # "callComposerEnabled":Z
    :cond_b
    :goto_5
    goto :goto_6

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEnabledCapabilities: Error processing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 566
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method public close()V
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_0

    .line 800
    iget v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsService;->setMmTelFeatureCallback(ILcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;)V

    .line 801
    const-string v0, "Unregister callback from ImsService"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->logi(Ljava/lang/String;)V

    .line 803
    :cond_0
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 3
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCallProfile: callSessionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  callType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v1, :cond_0

    .line 592
    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v1, v2, p1, p2}, Lcom/mediatek/ims/ImsService;->onCreateCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 594
    :cond_0
    return-object v0
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 606
    const-string v0, "createCallSession"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "callSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v1, :cond_0

    .line 610
    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/mediatek/ims/ImsService;->onCreateCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v0

    .line 612
    :cond_0
    return-object v0
.end method

.method public disableIms(I)V
    .locals 1
    .param p1, "slotId"    # I

    .line 793
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->disableIms(I)V

    .line 796
    :cond_0
    return-void
.end method

.method public enableIms(I)V
    .locals 1
    .param p1, "slotId"    # I

    .line 783
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->enableIms(I)V

    .line 786
    :cond_0
    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 3

    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, "configInterface":Lcom/android/ims/internal/IImsConfig;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v1, :cond_0

    .line 749
    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->onGetConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    .line 751
    :cond_0
    return-object v0
.end method

.method public getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 3

    .line 693
    const-string v0, "getEcbm"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, "ecbm":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v1, :cond_0

    .line 697
    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->onGetEcbmProxy(I)Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    .line 699
    :cond_0
    return-object v0
.end method

.method protected getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 648
    const-string v0, "getEcbmInterface"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    .line 651
    .local v0, "ecbm":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    return-object v1

    .line 654
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 3

    .line 709
    const-string v0, "getMultiEndpoint"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 711
    const/4 v0, 0x0

    .line 712
    .local v0, "multiendpoint":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v1, :cond_0

    .line 713
    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->onGetMultiEndpointProxy(I)Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v0

    .line 715
    :cond_0
    return-object v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    const-string v0, "getMultiEndpointInterface"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v0

    .line 665
    .local v0, "multiendpoint":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    return-object v1

    .line 668
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/feature/MtkImsSmsImpl;

    move-result-object v0

    return-object v0
.end method

.method public getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 4

    .line 677
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsUtImpl;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v0

    .local v0, "inst":Landroid/telephony/ims/stub/ImsUtImplBase;
    goto :goto_0

    .line 680
    .end local v0    # "inst":Landroid/telephony/ims/stub/ImsUtImplBase;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeLegacyComponentFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    move-result-object v0

    .line 681
    .local v0, "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    iget-object v3, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/plugin/LegacyComponentFactory;->makeImsUt(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v1

    move-object v0, v1

    .line 684
    .local v0, "inst":Landroid/telephony/ims/stub/ImsUtImplBase;
    :goto_0
    return-object v0
.end method

.method protected getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    invoke-virtual {p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getUt()Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v0

    .line 640
    .local v0, "utImpl":Landroid/telephony/ims/stub/ImsUtImplBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 310
    :try_start_0
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesStatusChanged error. msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->loge(Ljava/lang/String;)V

    .line 314
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public onFeatureReady()V
    .locals 1

    .line 779
    const-string v0, "onFeatureReady called!"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public onFeatureRemoved()V
    .locals 0

    .line 773
    return-void
.end method

.method public onNotifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 317
    invoke-super {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 318
    return-void
.end method

.method public onNotifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 321
    invoke-super {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 322
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 16
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 423
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->convertCapability(II)I

    move-result v10

    .line 425
    .local v10, "capConverted":I
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v11, 0x1

    invoke-direct {v0, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v12, v0

    .line 426
    .local v12, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v13, v11, [I

    .line 427
    .local v13, "returnValue":[I
    const/4 v14, 0x0

    const/4 v0, -0x1

    aput v0, v13, v14

    .line 428
    sget-object v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 429
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 428
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 431
    .local v15, "regTech":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    .line 432
    .local v0, "imsConfig":Lcom/android/ims/internal/IImsConfig;
    if-eqz v0, :cond_0

    .line 433
    new-instance v8, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;

    move-object v1, v8

    move-object/from16 v2, p0

    move v3, v10

    move v4, v15

    move-object v5, v12

    move-object v6, v13

    move/from16 v7, p1

    move-object v11, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;-><init>(Lcom/mediatek/ims/feature/MtkMmTelFeature;IILjava/util/concurrent/CountDownLatch;[III)V

    invoke-interface {v0, v10, v15, v11}, Lcom/android/ims/internal/IImsConfig;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V

    goto :goto_0

    .line 443
    :cond_0
    const-string v1, "Fail to queryCapabilityConfiguration, getConfigInterface is null"

    invoke-direct {v9, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v0    # "imsConfig":Lcom/android/ims/internal/IImsConfig;
    :goto_0
    goto :goto_1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to queryCapabilityConfiguration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->loge(Ljava/lang/String;)V

    .line 449
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const-wide/16 v0, 0x7d0

    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 452
    goto :goto_2

    .line 450
    :catch_1
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCapabilityConfiguration - error waiting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->loge(Ljava/lang/String;)V

    .line 453
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    aget v0, v13, v14

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v11, v1

    goto :goto_3

    :cond_1
    move v11, v14

    :goto_3
    return v11
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 741
    return-void
.end method

.method public shouldProcessCall([Ljava/lang/String;)I
    .locals 1
    .param p1, "numbers"    # [Ljava/lang/String;

    .line 629
    const-string v0, "shouldProcessCall"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 631
    const/4 v0, 0x0

    return v0
.end method
