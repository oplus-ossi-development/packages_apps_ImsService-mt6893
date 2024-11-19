.class public final Lcom/mediatek/ims/ril/ImsRILAdapter;
.super Lcom/mediatek/ims/ril/ImsBaseCommands;
.source "ImsRILAdapter.java"

# interfaces
.implements Lcom/mediatek/ims/ril/ImsCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;
    }
.end annotation


# static fields
.field static final AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

.field static final AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_AIDL_PROXY_DEAD:I = 0x9

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_MTK_AIDL_PROXY_DEAD:I = 0xa

.field static final EVENT_MTK_RADIO_PROXY_DEAD:I = 0x7

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_TRIGGER_AOSP_AIDL_PENDING_URC:I = 0xb

.field static final EVENT_TRIGGER_MTK_AIDL_PENDING_URC:I = 0xc

.field static final EVENT_TRIGGER_TO_FIRE_PENDING_URC:I = 0x8

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final IMSRIL_LOGD:Z = true

.field static final IMSRIL_LOGV:Z = false

.field static final IMSRIL_LOG_TAG:Ljava/lang/String; = "IMS_RILA"

.field static final IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final IMS_RILA_LOGD:Z = true

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0x3e8

.field static final MAX_SERVICE_IDX:I = 0x4

.field static final MIN_SERVICE_IDX:I = 0x0

.field static final MODEM_SERVICE:I = 0x3

.field static final MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final MTK_IMS_SERVICE:I = 0x1

.field public static final MTK_MAX_SERVICE_IDX:I = 0x3

.field public static final MTK_MIN_SERVICE_IDX:I = 0x0

.field public static final MTK_MODEM_SERVICE:I = 0x3

.field static final MTK_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_2_5:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

.field public static final MTK_RADIO_SERVICE:I = 0x0

.field public static final MTK_VOICE_SERVICE:I = 0x2

.field static final NETWORK_SERVICE:I = 0x4

.field static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field static final RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_SERVICE:I = 0x0

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "IMSRIL_ACK_WL"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static final SIM_SERVICE:I = 0x2

.field static final VOICE_SERVICE:I = 0x1

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field mContext:Landroid/content/Context;

.field private final mDeathRecipients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

.field mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

.field mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

.field mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

.field mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

.field protected mIsCellularSupported:Z

.field mIsMobileNetworkSupported:Z

.field mLastNITZTimeInfo:[Ljava/lang/Object;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field public mModemIndication:Lcom/mediatek/ims/ril/ModemIndication;

.field public mModemResponse:Lcom/mediatek/ims/ril/ModemResponse;

.field private final mMtkDeathRecipients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mMtkRadioExImsIndication:Lcom/mediatek/ims/ril/MtkRadioExImsIndication;

.field private mMtkRadioExImsResponse:Lcom/mediatek/ims/ril/MtkRadioExImsResponse;

.field private mMtkRadioExModemIndication:Lcom/mediatek/ims/ril/MtkRadioExModemIndication;

.field private mMtkRadioExModemResponse:Lcom/mediatek/ims/ril/MtkRadioExModemResponse;

.field private mMtkRadioExVoiceIndication:Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;

.field private mMtkRadioExVoiceResponse:Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;

.field volatile mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

.field final mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

.field private mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

.field private final mMtkServiceCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field public mNetworkIndication:Lcom/mediatek/ims/ril/NetworkIndication;

.field public mNetworkResponse:Lcom/mediatek/ims/ril/NetworkResponse;

.field final mPhoneId:Ljava/lang/Integer;

.field private mRILDefaultWorkSource:Landroid/os/WorkSource;

.field mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

.field volatile mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

.field private mRadioVersion:Lcom/android/internal/telephony/HalVersion;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

.field private final mServiceCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceProxies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/RadioServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceProxiesMtk:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mSimIndication:Lcom/mediatek/ims/ril/SimIndication;

.field private mSimResponse:Lcom/mediatek/ims/ril/SimResponse;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVoiceIndication:Lcom/mediatek/ims/ril/VoiceIndication;

.field private mVoiceResponse:Lcom/mediatek/ims/ril/VoiceResponse;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 354
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 365
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 368
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    .line 371
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 374
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    .line 377
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    .line 380
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    .line 383
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v6, 0x5

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 386
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v7, 0x6

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 389
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 398
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 401
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    .line 404
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    .line 407
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    .line 410
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

    .line 413
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v6}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_5:Lcom/android/internal/telephony/HalVersion;

    .line 416
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    .line 528
    const-string v0, "slot1"

    const-string v1, "slot2"

    const-string v2, "slot3"

    const-string v3, "slot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    .line 530
    const-string v0, "imsSlot1"

    const-string v1, "imsSlot2"

    const-string v2, "imsSlot3"

    const-string v3, "imsSlot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    .line 534
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 537
    const-string v0, "imsAospSlot1"

    const-string v1, "imsAospSlot2"

    const-string v2, "imsAospSlot3"

    const-string v3, "imsAospSlot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # I

    .line 1401
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {p0 .. p2}, Lcom/mediatek/ims/ril/ImsBaseCommands;-><init>(Landroid/content/Context;I)V

    .line 338
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 351
    const/4 v4, 0x0

    iput v4, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    .line 352
    iput v4, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    .line 353
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    .line 360
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 392
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 395
    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 425
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 432
    new-instance v0, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 440
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    .line 441
    iput-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    .line 442
    iput-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 443
    iput-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 461
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    .line 462
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    .line 463
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 465
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    .line 480
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    .line 482
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    .line 485
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 486
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ims-RIL: init phone = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1406
    iput-object v2, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mContext:Landroid/content/Context;

    .line 1407
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1409
    const-string v0, "connectivity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 1411
    .local v8, "cm":Landroid/net/ConnectivityManager;
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    .line 1413
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 1415
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v9

    :goto_1
    iput-boolean v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsCellularSupported:Z

    .line 1418
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->isRadioVersion2_0()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1419
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->isMtkRadioExVersion4_0()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    :cond_3
    goto :goto_2

    .line 1420
    :catch_0
    move-exception v0

    .line 1427
    :goto_2
    new-instance v0, Lcom/mediatek/ims/ril/RadioResponseImpl;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/RadioResponseImpl;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    .line 1428
    new-instance v0, Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/RadioIndicationImpl;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    .line 1429
    new-instance v0, Lcom/mediatek/ims/ril/ModemResponse;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ModemResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mModemResponse:Lcom/mediatek/ims/ril/ModemResponse;

    .line 1430
    new-instance v0, Lcom/mediatek/ims/ril/ModemIndication;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ModemIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mModemIndication:Lcom/mediatek/ims/ril/ModemIndication;

    .line 1431
    new-instance v0, Lcom/mediatek/ims/ril/NetworkResponse;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/NetworkResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNetworkResponse:Lcom/mediatek/ims/ril/NetworkResponse;

    .line 1432
    new-instance v0, Lcom/mediatek/ims/ril/NetworkIndication;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/NetworkIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNetworkIndication:Lcom/mediatek/ims/ril/NetworkIndication;

    .line 1433
    new-instance v0, Lcom/mediatek/ims/ril/SimResponse;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/SimResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSimResponse:Lcom/mediatek/ims/ril/SimResponse;

    .line 1434
    new-instance v0, Lcom/mediatek/ims/ril/SimIndication;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/SimIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSimIndication:Lcom/mediatek/ims/ril/SimIndication;

    .line 1435
    new-instance v0, Lcom/mediatek/ims/ril/VoiceResponse;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/VoiceResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVoiceResponse:Lcom/mediatek/ims/ril/VoiceResponse;

    .line 1436
    new-instance v0, Lcom/mediatek/ims/ril/VoiceIndication;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/VoiceIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVoiceIndication:Lcom/mediatek/ims/ril/VoiceIndication;

    .line 1438
    new-instance v0, Lcom/mediatek/ims/ril/ImsRadioResponse;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/ImsRadioResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    .line 1439
    new-instance v0, Lcom/mediatek/ims/ril/ImsRadioIndication;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/ImsRadioIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    .line 1440
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExModemResponse:Lcom/mediatek/ims/ril/MtkRadioExModemResponse;

    .line 1441
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExModemIndication;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExModemIndication:Lcom/mediatek/ims/ril/MtkRadioExModemIndication;

    .line 1442
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExVoiceResponse:Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;

    .line 1443
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExVoiceIndication:Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;

    .line 1444
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExImsResponse:Lcom/mediatek/ims/ril/MtkRadioExImsResponse;

    .line 1445
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExImsIndication:Lcom/mediatek/ims/ril/MtkRadioExImsIndication;

    .line 1447
    new-instance v0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 1448
    new-instance v0, Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    .line 1449
    new-instance v0, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    .line 1451
    const/4 v0, 0x0

    .local v0, "service":I
    :goto_3
    const/4 v11, 0x4

    if-gt v0, v11, :cond_5

    .line 1452
    if-eqz v0, :cond_4

    .line 1453
    iget-object v11, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    new-instance v12, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    invoke-direct {v12, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    invoke-virtual {v11, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1456
    :cond_4
    iget-object v11, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    new-instance v12, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v12, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v11, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1451
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1460
    .end local v0    # "service":I
    :cond_5
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v12, Lcom/mediatek/ims/ril/RadioModemProxy;

    invoke-direct {v12}, Lcom/mediatek/ims/ril/RadioModemProxy;-><init>()V

    const/4 v13, 0x3

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1461
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v12, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    invoke-direct {v12}, Lcom/mediatek/ims/ril/RadioNetworkProxy;-><init>()V

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1462
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v12, Lcom/mediatek/ims/ril/RadioSimProxy;

    invoke-direct {v12}, Lcom/mediatek/ims/ril/RadioSimProxy;-><init>()V

    const/4 v14, 0x2

    invoke-virtual {v0, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1463
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v12, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-direct {v12}, Lcom/mediatek/ims/ril/RadioVoiceProxy;-><init>()V

    invoke-virtual {v0, v9, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1465
    const/4 v0, 0x0

    .restart local v0    # "service":I
    :goto_4
    if-gt v0, v13, :cond_7

    .line 1466
    if-eqz v0, :cond_6

    .line 1467
    iget-object v12, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    new-instance v15, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;

    invoke-direct {v15, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    invoke-virtual {v12, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1469
    :cond_6
    iget-object v12, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    new-instance v15, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v15, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v12, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1465
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1473
    .end local v0    # "service":I
    :cond_7
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    new-instance v6, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-direct {v6}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;-><init>()V

    invoke-virtual {v0, v13, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1475
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    new-instance v6, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    invoke-direct {v6}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;-><init>()V

    invoke-virtual {v0, v14, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1476
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    new-instance v6, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-direct {v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;-><init>()V

    invoke-virtual {v0, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1478
    const-string v0, "power"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1479
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v6, "IMS_RILA"

    invoke-virtual {v0, v9, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1480
    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1481
    const-string v6, "IMSRIL_ACK_WL"

    invoke-virtual {v0, v9, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1482
    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1483
    const v6, 0xea60

    const-string v7, "ro.ril.wake_lock_timeout"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockTimeout:I

    .line 1485
    const/16 v6, 0xc8

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLockTimeout:I

    .line 1487
    iput v4, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 1488
    new-instance v6, Landroid/os/WorkSource;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1489
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v7, v12}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1493
    const/4 v6, 0x0

    .local v6, "service":I
    :goto_5
    const-wide/16 v14, 0x3e8

    const-string v7, "Ims-RIL:["

    if-gt v6, v11, :cond_b

    .line 1494
    if-nez v6, :cond_9

    .line 1495
    invoke-direct {v1, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v7

    .line 1497
    .local v7, "proxy":Landroid/hardware/radio/V1_0/IRadio;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ims-RIL: proxy = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v7, :cond_8

    move v14, v9

    goto :goto_6

    :cond_8
    move v14, v4

    :goto_6
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1499
    .end local v7    # "proxy":Landroid/hardware/radio/V1_0/IRadio;
    goto :goto_7

    .line 1502
    :cond_9
    invoke-virtual {v1, v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v12

    .line 1504
    .local v12, "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ims-RIL: serviceProxy.isAidl = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v12}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isAidl()Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1506
    iget-object v9, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v11, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v12}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1508
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "], send EVENT_TRIGGER_AOSP_AIDL_PENDING_URC"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1509
    iget-object v7, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v9, 0xb

    .line 1510
    invoke-virtual {v7, v9, v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 1509
    invoke-virtual {v7, v9, v14, v15}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1493
    .end local v12    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    :cond_a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x4

    goto/16 :goto_5

    .line 1517
    .end local v6    # "service":I
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "service":I
    :goto_8
    if-gt v6, v13, :cond_f

    .line 1518
    if-nez v6, :cond_d

    .line 1519
    invoke-direct {v1, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v9

    .line 1521
    .local v9, "mtkRadioProxy":Landroid/hidl/base/V1_0/IBase;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mtk-Ims-RIL: mtkRadioProxy = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v9, :cond_c

    const/4 v12, 0x1

    goto :goto_9

    :cond_c
    move v12, v4

    :goto_9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1523
    .end local v9    # "mtkRadioProxy":Landroid/hidl/base/V1_0/IBase;
    goto :goto_a

    .line 1526
    :cond_d
    invoke-virtual {v1, v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v9

    .line 1528
    .local v9, "mtkServiceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mtk-Ims-RIL: mtkServiceProxy.isAidl = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isAidl()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1530
    iget-object v11, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v12, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v9}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1532
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], send EVENT_TRIGGER_MTK_AIDL_PENDING_URC "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1533
    iget-object v11, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v12, 0xc

    .line 1534
    invoke-virtual {v11, v12, v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 1533
    invoke-virtual {v11, v12, v14, v15}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1517
    .end local v9    # "mtkServiceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :cond_e
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 1541
    .end local v6    # "service":I
    :cond_f
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 316
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Lcom/mediatek/ims/ril/RILRequest;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 316
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 316
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetMtkProxyAndRequestList(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/Message;

    .line 316
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/Message;

    .line 316
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Lcom/android/internal/telephony/HalVersion;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 316
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method

.method static synthetic access$1400(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 316
    invoke-static {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->mtkServiceToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 316
    invoke-static {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 316
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ril/ImsRILAdapter;Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 316
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 316
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 316
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetProxyAndRequestList(I)V

    return-void
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 316
    invoke-static {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->serviceToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/ril/ImsRILAdapter;)Lcom/android/internal/telephony/HalVersion;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 316
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 316
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    return-object v0
.end method

.method private acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "wakeLockType"    # I

    .line 4635
    monitor-enter p1

    .line 4636
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4637
    const-string v0, "IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to aquire wakelock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4638
    monitor-exit p1

    return-void

    .line 4641
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 4677
    const-string v0, "IMS_RILA"

    goto/16 :goto_2

    .line 4667
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4668
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4669
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    .line 4671
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4672
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 4673
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4674
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 4675
    goto :goto_1

    .line 4674
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_2
    throw v1

    .line 4643
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4644
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4645
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 4646
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    .line 4648
    iget-object v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 4649
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4650
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_1

    .line 4651
    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_0

    .line 4653
    :cond_1
    iget-object v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4655
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4658
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 4661
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4662
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 4663
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4664
    nop

    .end local v1    # "clientId":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4665
    nop

    .line 4680
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 4681
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4682
    return-void

    .line 4664
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_6
    throw v1

    .line 4677
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4678
    monitor-exit p1

    return-void

    .line 4681
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addRequest(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 1544
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 1545
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1546
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    .line 1547
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1548
    monitor-exit v0

    .line 1549
    return-void

    .line 1548
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addToRilHistogram(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 9
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 4784
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4785
    .local v0, "endTime":J
    iget-wide v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 4787
    .local v2, "totalTime":I
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v3

    .line 4788
    :try_start_0
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    .line 4789
    .local v4, "entry":Landroid/telephony/TelephonyHistogram;
    if-nez v4, :cond_0

    .line 4791
    new-instance v5, Landroid/telephony/TelephonyHistogram;

    const/4 v6, 0x1

    iget v7, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    move-object v4, v5

    .line 4793
    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v6, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4795
    :cond_0
    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 4796
    .end local v4    # "entry":Landroid/telephony/TelephonyHistogram;
    monitor-exit v3

    .line 4797
    return-void

    .line 4796
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private clearWakeLock(I)Z
    .locals 6
    .param p1, "wakeLockType"    # I

    .line 4723
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 4724
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 4725
    :try_start_0
    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    .line 4726
    :cond_0
    const-string v3, "IMS_RILA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTE: mWakeLockCount is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "at time of clearing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4728
    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 4729
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4730
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 4731
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4732
    monitor-exit v2

    return v0

    .line 4733
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4735
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 4736
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    .line 4737
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4738
    monitor-exit v2

    return v0

    .line 4739
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public static convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 1576
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 8
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 4685
    monitor-enter p1

    .line 4686
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    packed-switch v0, :pswitch_data_0

    .line 4716
    const-string v0, "IMS_RILA"

    goto :goto_2

    .line 4712
    :pswitch_0
    goto :goto_3

    .line 4688
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4689
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    iget v4, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4691
    iget v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 4689
    :goto_0
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 4692
    iget-object v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 4693
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_2

    .line 4695
    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 4696
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 4697
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4699
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4702
    :cond_2
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    if-le v2, v7, :cond_3

    .line 4703
    sub-int/2addr v2, v7

    iput v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    goto :goto_1

    .line 4705
    :cond_3
    iput v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 4706
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4708
    .end local v1    # "clientId":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    .line 4709
    goto :goto_3

    .line 4708
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_2
    throw v1

    .line 4714
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :pswitch_2
    goto :goto_3

    .line 4716
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4718
    :goto_3
    const/4 v0, -0x1

    iput v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 4719
    monitor-exit p1

    .line 4720
    return-void

    .line 4719
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private emergencyDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "callprofile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p5, "result"    # Landroid/os/Message;

    .line 2906
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2907
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2908
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2909
    const/16 v1, 0x827

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 2914
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2918
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2919
    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2918
    move-object v1, v0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->emergencyDial(ILjava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2923
    goto :goto_0

    .line 2921
    :catch_0
    move-exception v1

    .line 2922
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "emergencyDial"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2925
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_1
    :goto_0
    return-void
.end method

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;
    .locals 3
    .param p1, "serial"    # I

    .line 4772
    const/4 v0, 0x0

    .line 4773
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4774
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/RILRequest;

    move-object v0, v2

    .line 4775
    if-eqz v0, :cond_0

    .line 4776
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4778
    :cond_0
    monitor-exit v1

    .line 4780
    return-object v0

    .line 4778
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 0
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 4435
    if-nez p1, :cond_0

    .line 4436
    iget-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 4439
    :cond_0
    return-object p1
.end method

.method private getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;
    .locals 7
    .param p1, "result"    # Landroid/os/Message;

    .line 5416
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 5418
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    if-nez v0, :cond_1

    .line 5420
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 5421
    return-object v1

    .line 5424
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v0, :cond_2

    .line 5425
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    return-object v0

    .line 5428
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 5429
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_6

    .line 5438
    :cond_3
    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5441
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 5440
    invoke-static {v3, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5445
    goto :goto_0

    .line 5442
    :catch_0
    move-exception v3

    .line 5443
    .local v3, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtkRadioProxy getServiceV3_0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5447
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    const-string v4, "getMtkRadioProxy mMtkRadioVersion = "

    if-eqz v3, :cond_5

    .line 5449
    :try_start_1
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5450
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5451
    invoke-static {v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5454
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v3, :cond_4

    .line 5455
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    .line 5457
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 5456
    invoke-interface {v3, v4, v5, v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 5458
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    .line 5459
    invoke-interface {v3, v4, v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;)V

    goto :goto_1

    .line 5461
    :cond_4
    const-string v3, "getMtkRadioProxy setResponseFunctionsMtkV3_0: error, castFrom failed."

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 5463
    :catch_1
    move-exception v3

    .line 5464
    .restart local v3    # "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtkRadioProxy setResponseFunctionsMtkV3_0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5466
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto/16 :goto_5

    .line 5469
    :cond_5
    :try_start_2
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5472
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v3, v5

    .line 5471
    invoke-static {v3, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5476
    goto :goto_2

    .line 5473
    :catch_2
    move-exception v3

    .line 5474
    .restart local v3    # "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMtkRadioProxy getServiceV2_0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5477
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v3, :cond_b

    .line 5478
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    if-nez v3, :cond_6

    .line 5479
    new-instance v3, Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, p0, v5}, Lcom/mediatek/ims/ril/ImsRadioResponseV2;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    .line 5481
    :cond_6
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    if-nez v3, :cond_7

    .line 5482
    new-instance v3, Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, p0, v5}, Lcom/mediatek/ims/ril/ImsRadioIndicationV2;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    .line 5485
    :cond_7
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    invoke-static {v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 5487
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5488
    invoke-static {v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5490
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 5491
    :cond_8
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    invoke-static {v3}, Lvendor/mediatek/hardware/mtkradioex/V2_1/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_1/IMtkRadioEx;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 5493
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5494
    invoke-static {v3}, Lvendor/mediatek/hardware/mtkradioex/V2_1/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_1/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5496
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 5498
    :cond_9
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5500
    invoke-static {v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5501
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5503
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5504
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v3, :cond_a

    .line 5505
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    .line 5507
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 5506
    invoke-interface {v3, v4, v5, v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 5508
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    .line 5509
    invoke-interface {v3, v4, v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;)V

    goto :goto_4

    .line 5511
    :cond_a
    const-string v3, "getMtkRadioProxy setResponseFunctionsV2: error, castFrom failed."

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5516
    :goto_4
    goto :goto_5

    .line 5513
    :catch_3
    move-exception v3

    .line 5514
    .restart local v3    # "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5515
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtkRadioProxy setResponseFunctionsV2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5520
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_5
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-nez v3, :cond_d

    .line 5521
    if-eqz p1, :cond_c

    .line 5522
    const/4 v3, 0x1

    .line 5523
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 5522
    invoke-static {p1, v1, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5524
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5528
    :cond_c
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 5529
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    .line 5531
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 5530
    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 5529
    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5535
    :cond_d
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    return-object v0

    .line 5432
    :cond_e
    :goto_6
    const-string v0, "getMtkRadioProxy service died, we try again later"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5433
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 5434
    return-object v1
.end method

.method private getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 9
    .param p1, "result"    # Landroid/os/Message;

    .line 1273
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1274
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    if-nez v0, :cond_1

    .line 1276
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 1277
    return-object v1

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v0, :cond_2

    .line 1281
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0

    .line 1284
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_3

    .line 1298
    const-string v0, "getRadioProxy service died, we try again later"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1299
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 1300
    return-object v1

    .line 1301
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioProxy, phone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not valid or is disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1309
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 1310
    return-object v1

    .line 1315
    :cond_4
    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1316
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    .line 1315
    invoke-static {v4, v3}, Landroid/hardware/radio/V1_0/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1317
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    goto :goto_0

    .line 1376
    :catch_0
    move-exception v4

    goto/16 :goto_4

    .line 1318
    :catch_1
    move-exception v4

    .line 1319
    .local v4, "e":Ljava/util/NoSuchElementException;
    :try_start_1
    const-string v5, "getRadioProxy: NoSuchElementException "

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1322
    .end local v4    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v4, :cond_a

    .line 1323
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1324
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1325
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_1

    .line 1326
    :cond_5
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1327
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1328
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_1

    .line 1329
    :cond_6
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1330
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1331
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_1

    .line 1332
    :cond_7
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1333
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1334
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_1

    .line 1335
    :cond_8
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1336
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1337
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1339
    :cond_9
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioProxy: mRadioVersion "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1342
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioProxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1343
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v4, :cond_e

    .line 1344
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 1345
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v6

    .line 1344
    invoke-interface {v4, v5, v6, v7}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1346
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-interface {v4, v5, v6}, Landroid/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 1347
    const-string v4, "setResponseFunctionsIms"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1349
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    if-eqz v4, :cond_f

    .line 1350
    monitor-enter v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1352
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queue size  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1353
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    sub-int/2addr v5, v0

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_b

    .line 1354
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 1353
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1356
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queue size  after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1357
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 1358
    const-string v6, "reset pending switch request"

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1360
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1361
    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v6

    .line 1362
    .local v6, "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v7, v6, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 1363
    .local v7, "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v8, v7, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_c

    .line 1364
    iget-object v8, v7, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1365
    iget-object v8, v7, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1368
    :cond_c
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->resetSendChldRequest()V

    .line 1369
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1371
    .end local v5    # "i":I
    .end local v6    # "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v7    # "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    :cond_d
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "result":Landroid/os/Message;
    :try_start_3
    throw v5

    .line 1374
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "result":Landroid/os/Message;
    :cond_e
    const-string v4, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1379
    :cond_f
    :goto_3
    goto :goto_5

    .line 1377
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1381
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_5
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v4, :cond_11

    .line 1382
    if-eqz p1, :cond_10

    .line 1383
    nop

    .line 1384
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1383
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1385
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1388
    :cond_10
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 1389
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 1391
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1390
    invoke-virtual {v0, v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 1389
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1395
    :cond_11
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;
    .locals 9
    .param p0, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 805
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 807
    :cond_0
    const/4 v0, 0x0

    .line 808
    .local v0, "timeoutResponse":Ljava/lang/Object;
    iget v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 810
    :pswitch_0
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 811
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v2

    new-array v7, v2, [I

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    move-object v0, v1

    .line 814
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x87
        :pswitch_0
    .end packed-switch
.end method

.method public static getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 549
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 550
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 551
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 552
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 553
    .local v3, "entry":Landroid/telephony/TelephonyHistogram;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    nop

    .end local v3    # "entry":Landroid/telephony/TelephonyHistogram;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 556
    return-object v1

    .line 555
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 4443
    if-eqz p1, :cond_0

    .line 4444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4447
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 3974
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 3975
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    .line 3977
    .local v1, "queueSize":I
    if-lez v1, :cond_5

    .line 3978
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->get()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 3979
    .local v2, "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 3980
    .local v3, "rr2":Lcom/mediatek/ims/ril/RILRequest;
    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v5, 0x31

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    .line 3982
    const-string v4, "DTMF queue isn\'t 0, first request is START, send stop dtmf and pending switch"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3984
    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 3985
    const/4 v5, 0x2

    .local v5, "j":I
    goto :goto_0

    .line 3988
    .end local v5    # "j":I
    :cond_0
    const/4 v5, 0x1

    .line 3990
    .restart local v5    # "j":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queue size  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3991
    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_1
    if-lt v7, v5, :cond_1

    .line 3992
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 3991
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3994
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queue size  after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v9}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3995
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v8

    if-ne v8, v4, :cond_3

    .line 3997
    const-string v8, "add dummy stop dtmf request"

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3998
    const/16 v8, 0x32

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v8, v6, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 4001
    .local v8, "rr3":Lcom/mediatek/ims/ril/RILRequest;
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    .line 4002
    .local v4, "myParam":[Ljava/lang/Object;
    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v9, v8, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v9

    .line 4004
    .local v9, "dqrr3":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v10}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->stop()V

    .line 4005
    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v10, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4006
    .end local v4    # "myParam":[Ljava/lang/Object;
    .end local v8    # "rr3":Lcom/mediatek/ims/ril/RILRequest;
    .end local v9    # "dqrr3":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_3

    .line 4011
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_2
    const-string v4, "DTMF queue isn\'t 0, first request is STOP, penging switch"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4012
    const/4 v5, 0x1

    .line 4013
    .restart local v5    # "j":I
    add-int/lit8 v4, v1, -0x1

    move v7, v4

    .restart local v7    # "i":I
    :goto_2
    if-lt v7, v5, :cond_3

    .line 4014
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 4013
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 4020
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 4021
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 4022
    .local v4, "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v8, v4, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 4023
    .local v8, "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v9, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v9, :cond_4

    .line 4024
    iget-object v9, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v9, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4025
    iget-object v6, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 4029
    .end local v4    # "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v8    # "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 4030
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4031
    .end local v2    # "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_4

    .line 4032
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_5
    const-string v2, "DTMF queue is 0, send switch Immediately"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4033
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setSendChldRequest()V

    .line 4034
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 4035
    .local v2, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4037
    .end local v1    # "queueSize":I
    .end local v2    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :goto_4
    monitor-exit v0

    .line 4038
    return-void

    .line 4037
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "service"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1566
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetMtkProxyAndRequestList(I)V

    .line 1567
    return-void
.end method

.method private handleProxyNotExist(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 5408
    if-eqz p1, :cond_0

    .line 5409
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5410
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 5409
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5411
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5413
    :cond_0
    return-void
.end method

.method private handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "service"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1560
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetProxyAndRequestList(I)V

    .line 1561
    return-void
.end method

.method private internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToAdd"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3886
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3888
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3889
    const/16 v1, 0x82a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3893
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3894
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " confCallId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3895
    invoke-static {p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callIdToAdd ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3893
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3900
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    move-object v1, v0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->controlImsConferenceCallMember(IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3904
    goto :goto_0

    .line 3902
    :catch_0
    move-exception v1

    .line 3903
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "addImsConferenceCallMember"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3906
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method private internalImsEct(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3946
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3947
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3949
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3950
    const/16 v1, 0x823

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3954
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3958
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->imsEctCommand(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3961
    goto :goto_0

    .line 3959
    :catch_0
    move-exception v2

    .line 3960
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "imsEctCommand"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3963
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private internalRemoveConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToRemove"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3917
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3919
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3920
    const/16 v1, 0x82b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3924
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3925
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " confCallId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3926
    invoke-static {p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callIdToRemove ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3924
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3931
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    move-object v1, v0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->controlImsConferenceCallMember(IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3935
    goto :goto_0

    .line 3933
    :catch_0
    move-exception v1

    .line 3934
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "removeImsConferenceCallMember"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3937
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method private isMtkRadioExVersion4_0()Z
    .locals 9

    .line 919
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->DESCRIPTOR:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->DESCRIPTOR:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->DESCRIPTOR:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 924
    .local v0, "serviceNames":[Ljava/lang/String;
    array-length v1, v0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 925
    .local v5, "serviceName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 926
    return v3

    .line 924
    .end local v5    # "serviceName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 929
    :cond_1
    return v2
.end method

.method private isRadioVersion2_0()Z
    .locals 9

    .line 904
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/hardware/radio/modem/IRadioModem;->DESCRIPTOR:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/radio/sim/IRadioSim;->DESCRIPTOR:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice;->DESCRIPTOR:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 910
    .local v0, "serviceNames":[Ljava/lang/String;
    array-length v1, v0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 911
    .local v5, "serviceName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 912
    return v3

    .line 910
    .end local v5    # "serviceName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 915
    :cond_1
    return v2
.end method

.method private static mtkServiceToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "service"    # I

    .line 5937
    packed-switch p0, :pswitch_data_0

    .line 5955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5949
    :pswitch_0
    const-string v0, "MTK_MODEM"

    return-object v0

    .line 5951
    :pswitch_1
    const-string v0, "MTK_VOICE"

    return-object v0

    .line 5953
    :pswitch_2
    const-string v0, "MTK_IMS_SERVICE"

    return-object v0

    .line 5939
    :pswitch_3
    const-string v0, "MTK_RADIO"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;
    .locals 1
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 1552
    invoke-static {p1, p2, p3}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 1553
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->addRequest(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 1554
    return-object v0
.end method

.method private processResponseDoneInternal(Lcom/mediatek/ims/ril/RILRequest;IILjava/lang/Object;)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "rilError"    # I
    .param p3, "responseType"    # I
    .param p4, "ret"    # Ljava/lang/Object;

    .line 4319
    const-string v0, "< "

    if-nez p2, :cond_0

    .line 4321
    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x858

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x859

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x85a

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x85b

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v2, 0x85d    # 3.0E-42f

    if-eq v1, v2, :cond_1

    .line 4326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4327
    invoke-static {v1, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4326
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 4332
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4335
    invoke-virtual {p1, p2, p4}, Lcom/mediatek/ims/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 4337
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    move v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 4340
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0x34

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0x48

    if-ne v0, v1, :cond_3

    .line 4344
    :cond_2
    const-string v0, "clear mIsSendChldRequest"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4345
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->resetSendChldRequest()V

    .line 4348
    :cond_3
    if-nez p3, :cond_4

    .line 4349
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4351
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4352
    return-void
.end method

.method private processResponseInternal(IIIIZ)Lcom/mediatek/ims/ril/RILRequest;
    .locals 4
    .param p1, "service"    # I
    .param p2, "serial"    # I
    .param p3, "error"    # I
    .param p4, "type"    # I
    .param p5, "isProprietary"    # Z

    .line 4222
    const/4 v0, 0x0

    .line 4224
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 4225
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4226
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/RILRequest;

    move-object v0, v2

    .line 4227
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4228
    if-nez v0, :cond_0

    .line 4229
    const-string v1, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected solicited ack response! sn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4231
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ack from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->serviceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4234
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4233
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4237
    :goto_0
    return-object v0

    .line 4227
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4240
    :cond_1
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 4241
    if-nez v0, :cond_2

    .line 4242
    const-string v1, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: Unexpected response! serial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    const/4 v1, 0x0

    return-object v1

    .line 4248
    :cond_2
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->addToRilHistogram(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4250
    const/4 v1, 0x2

    if-ne p4, v1, :cond_4

    .line 4251
    if-eqz p5, :cond_3

    .line 4252
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendMtkAck(I)V

    goto :goto_1

    .line 4254
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendAck(I)V

    .line 4257
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response received from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->serviceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4258
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Sending ack to ril.cpp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4257
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4268
    :cond_4
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 4270
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(IZ)V

    .line 4275
    :goto_2
    nop

    .line 4280
    return-object v0

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .line 5011
    sparse-switch p0, :sswitch_data_0

    .line 5141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5111
    :sswitch_0
    const-string v0, "RIL_REQUEST_SET_BARRING_SEPCIFIC_CALL"

    return-object v0

    .line 5109
    :sswitch_1
    const-string v0, "RIL_REQUEST_GET_BARRING_SEPCIFIC_CALL"

    return-object v0

    .line 5139
    :sswitch_2
    const-string v0, "RIL_REQUEST_VIDEO_RINGTONE_EVENT"

    return-object v0

    .line 5137
    :sswitch_3
    const-string v0, "RIL_REQUEST_SET_CALL_ADDITIONAL_INFO"

    return-object v0

    .line 5036
    :sswitch_4
    const-string v0, "ECC_REDIAL_APPROVE"

    return-object v0

    .line 5134
    :sswitch_5
    const-string v0, "RIL_REQUEST_TOGGLE_RTT_AUDIO_INDICATION"

    return-object v0

    .line 5132
    :sswitch_6
    const-string v0, "RIL_REQUEST_QUERY_SSAC_STATUS"

    return-object v0

    .line 5130
    :sswitch_7
    const-string v0, "RIL_REQUEST_SET_IMS_CALL_MODE"

    return-object v0

    .line 5128
    :sswitch_8
    const-string v0, "RIL_REQUEST_SIP_HEADER_REPORT"

    return-object v0

    .line 5126
    :sswitch_9
    const-string v0, "RIL_REQUEST_SET_SIP_HEADER"

    return-object v0

    .line 5023
    :sswitch_a
    const-string v0, "HANGUP_WITH_REASON"

    return-object v0

    .line 5123
    :sswitch_b
    const-string v0, "RIL_REQUEST_QUERY_VOPS_STATUS"

    return-object v0

    .line 5122
    :sswitch_c
    const-string v0, "RIL_REQUEST_RTT_MODIFY_REQUST_RESPONSE"

    return-object v0

    .line 5120
    :sswitch_d
    const-string v0, "RIL_REQUEST_SEND_RTT_TEXT"

    return-object v0

    .line 5118
    :sswitch_e
    const-string v0, "RIL_REQUEST_SEND_RTT_MODIFY_REQUEST"

    return-object v0

    .line 5116
    :sswitch_f
    const-string v0, "RIL_REQUEST_SET_RTT_MODE"

    return-object v0

    .line 5083
    :sswitch_10
    const-string v0, "CDMA_SMS_ACKNOWLEDGE_EX"

    return-object v0

    .line 5082
    :sswitch_11
    const-string v0, "RIL_REQUEST_SMS_ACKNOWLEDGE_EX"

    return-object v0

    .line 5107
    :sswitch_12
    const-string v0, "SETUP_XCAP_USER_AGENT_STRING"

    return-object v0

    .line 5113
    :sswitch_13
    const-string v0, "RIL_REQUEST_SET_RCS_UA_ENABLE"

    return-object v0

    .line 5106
    :sswitch_14
    const-string v0, "RIL_REQUEST_RESET_SUPP_SERV"

    return-object v0

    .line 5105
    :sswitch_15
    const-string v0, "RIL_REQUEST_GET_XCAP_STATUS"

    return-object v0

    .line 5049
    :sswitch_16
    const-string v0, "IMS_CONFIG_GET_RESOURCE_CAP"

    return-object v0

    .line 5047
    :sswitch_17
    const-string v0, "IMS_CONFIG_GET_PROVISION"

    return-object v0

    .line 5045
    :sswitch_18
    const-string v0, "IMS_CONFIG_SET_PROVISION"

    return-object v0

    .line 5043
    :sswitch_19
    const-string v0, "IMS_CONFIG_GET_FEATURE"

    return-object v0

    .line 5041
    :sswitch_1a
    const-string v0, "IMS_CONFIG_SET_FEATURE"

    return-object v0

    .line 5053
    :sswitch_1b
    const-string v0, "RIL_REQUEST_SET_IMS_BEARER_NOTIFICATION"

    return-object v0

    .line 5081
    :sswitch_1c
    const-string v0, "RIL_REQUEST_IMS_SEND_SMS_EX"

    return-object v0

    .line 5079
    :sswitch_1d
    const-string v0, "ImsRILConstants.RIL_REQUEST_SET_MD_IMSCFG"

    return-object v0

    .line 5104
    :sswitch_1e
    const-string v0, "RIL_REQUEST_RUN_GBA"

    return-object v0

    .line 5103
    :sswitch_1f
    const-string v0, "SET_CALL_FORWARD_IN_TIME_SLOT"

    return-object v0

    .line 5102
    :sswitch_20
    const-string v0, "QUERY_CALL_FORWARD_IN_TIME_SLOT"

    return-object v0

    .line 5100
    :sswitch_21
    const-string v0, "SET_COLR"

    return-object v0

    .line 5098
    :sswitch_22
    const-string v0, "SET_COLP"

    return-object v0

    .line 5078
    :sswitch_23
    const-string v0, "RIL_REQUEST_SET_VOICE_DOMAIN_PREFERENCE"

    return-object v0

    .line 5099
    :sswitch_24
    const-string v0, "GET_COLR"

    return-object v0

    .line 5097
    :sswitch_25
    const-string v0, "GET_COLP"

    return-object v0

    .line 5096
    :sswitch_26
    const-string v0, "SET_CLIP"

    return-object v0

    .line 5067
    :sswitch_27
    const-string v0, "IMS_VT_DIAL"

    return-object v0

    .line 5066
    :sswitch_28
    const-string v0, "IMS_DIAL"

    return-object v0

    .line 5064
    :sswitch_29
    const-string v0, "SET_IMS_REGISTRATION_REPORT"

    return-object v0

    .line 5065
    :sswitch_2a
    const-string v0, "PULL_CALL"

    return-object v0

    .line 5062
    :sswitch_2b
    const-string v0, "SET_WFC_PROFILE"

    return-object v0

    .line 5061
    :sswitch_2c
    const-string v0, "CANCEL_USSI"

    return-object v0

    .line 5060
    :sswitch_2d
    const-string v0, "SEND_USSI"

    return-object v0

    .line 5059
    :sswitch_2e
    const-string v0, "VT_DIAL_WITH_SIP_URI"

    return-object v0

    .line 5074
    :sswitch_2f
    const-string v0, "RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 5072
    :sswitch_30
    const-string v0, "RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 5070
    :sswitch_31
    const-string v0, "RIL_REQUEST_CONFERENCE_DIAL"

    return-object v0

    .line 5069
    :sswitch_32
    const-string v0, "ImsRILConstants.RIL_REQUEST_SET_IMS_RTP_REPORT"

    return-object v0

    .line 5068
    :sswitch_33
    const-string v0, "IMS_EMERGENCY_DIAL"

    return-object v0

    .line 5057
    :sswitch_34
    const-string v0, "RESUME_CALL"

    return-object v0

    .line 5056
    :sswitch_35
    const-string v0, "HOLD_CALL"

    return-object v0

    .line 5055
    :sswitch_36
    const-string v0, "IMS_ECT"

    return-object v0

    .line 5054
    :sswitch_37
    const-string v0, "IMS_DEREG_NOTIFICATION"

    return-object v0

    .line 5051
    :sswitch_38
    const-string v0, "IMS_BEARER_STATE_CONFIRM"

    return-object v0

    .line 5039
    :sswitch_39
    const-string v0, "SET_PROVISION_VALUE"

    return-object v0

    .line 5038
    :sswitch_3a
    const-string v0, "GET_PROVISION_VALUE"

    return-object v0

    .line 5037
    :sswitch_3b
    const-string v0, "SET_IMSCFG"

    return-object v0

    .line 5035
    :sswitch_3c
    const-string v0, "VIDEO_CALL_ACCEPT"

    return-object v0

    .line 5034
    :sswitch_3d
    const-string v0, "SET_VIWIFI_ENABLE"

    return-object v0

    .line 5033
    :sswitch_3e
    const-string v0, "SET_VILTE_ENABLE"

    return-object v0

    .line 5032
    :sswitch_3f
    const-string v0, "SET_WFC_ENABLE"

    return-object v0

    .line 5031
    :sswitch_40
    const-string v0, "SET_VOLTE_ENABLE"

    return-object v0

    .line 5030
    :sswitch_41
    const-string v0, "SET_IMS_ENABLE"

    return-object v0

    .line 5058
    :sswitch_42
    const-string v0, "SET_ECC_LIST"

    return-object v0

    .line 5024
    :sswitch_43
    const-string v0, "HANGUP_ALL"

    return-object v0

    .line 5076
    :sswitch_44
    const-string v0, "RIL_REQUEST_SET_CALL_INDICATION"

    return-object v0

    .line 5021
    :sswitch_45
    const-string v0, "GET_ACTIVITY_INFO"

    return-object v0

    .line 5027
    :sswitch_46
    const-string v0, "SHUTDOWN"

    return-object v0

    .line 5019
    :sswitch_47
    const-string v0, "EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 5020
    :sswitch_48
    const-string v0, "EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 5095
    :sswitch_49
    const-string v0, "QUERY_CLIP"

    return-object v0

    .line 5026
    :sswitch_4a
    const-string v0, "SET_MUTE"

    return-object v0

    .line 5017
    :sswitch_4b
    const-string v0, "DTMF_STOP"

    return-object v0

    .line 5016
    :sswitch_4c
    const-string v0, "DTMF_START"

    return-object v0

    .line 5094
    :sswitch_4d
    const-string v0, "CHANGE_BARRING_PASSWORD"

    return-object v0

    .line 5093
    :sswitch_4e
    const-string v0, "SET_FACILITY_LOCK"

    return-object v0

    .line 5092
    :sswitch_4f
    const-string v0, "QUERY_FACILITY_LOCK"

    return-object v0

    .line 5012
    :sswitch_50
    const-string v0, "ANSWER"

    return-object v0

    .line 5091
    :sswitch_51
    const-string v0, "SET_CALL_WAITING"

    return-object v0

    .line 5090
    :sswitch_52
    const-string v0, "QUERY_CALL_WAITING"

    return-object v0

    .line 5087
    :sswitch_53
    const-string v0, "SET_CALL_FORWARD"

    return-object v0

    .line 5086
    :sswitch_54
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 5089
    :sswitch_55
    const-string v0, "SET_CLIR"

    return-object v0

    .line 5088
    :sswitch_56
    const-string v0, "GET_CLIR"

    return-object v0

    .line 5015
    :sswitch_57
    const-string v0, "DTMF"

    return-object v0

    .line 5025
    :sswitch_58
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 5013
    :sswitch_59
    const-string v0, "CONFERENCE"

    return-object v0

    .line 5029
    :sswitch_5a
    const-string v0, "SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 5022
    :sswitch_5b
    const-string v0, "HANGUP"

    return-object v0

    .line 5014
    :sswitch_5c
    const-string v0, "DIAL"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5c
        0xc -> :sswitch_5b
        0xf -> :sswitch_5a
        0x10 -> :sswitch_59
        0x12 -> :sswitch_58
        0x18 -> :sswitch_57
        0x1f -> :sswitch_56
        0x20 -> :sswitch_55
        0x21 -> :sswitch_54
        0x22 -> :sswitch_53
        0x23 -> :sswitch_52
        0x24 -> :sswitch_51
        0x28 -> :sswitch_50
        0x2a -> :sswitch_4f
        0x2b -> :sswitch_4e
        0x2c -> :sswitch_4d
        0x31 -> :sswitch_4c
        0x32 -> :sswitch_4b
        0x35 -> :sswitch_4a
        0x37 -> :sswitch_49
        0x48 -> :sswitch_48
        0x63 -> :sswitch_47
        0x81 -> :sswitch_46
        0x87 -> :sswitch_45
        0x7e0 -> :sswitch_44
        0x7e3 -> :sswitch_43
        0x7ee -> :sswitch_42
        0x815 -> :sswitch_41
        0x816 -> :sswitch_40
        0x817 -> :sswitch_3f
        0x818 -> :sswitch_3e
        0x819 -> :sswitch_3d
        0x81c -> :sswitch_3c
        0x81d -> :sswitch_3b
        0x81e -> :sswitch_3a
        0x81f -> :sswitch_39
        0x820 -> :sswitch_38
        0x822 -> :sswitch_37
        0x823 -> :sswitch_36
        0x824 -> :sswitch_35
        0x825 -> :sswitch_34
        0x827 -> :sswitch_33
        0x828 -> :sswitch_32
        0x829 -> :sswitch_31
        0x82a -> :sswitch_30
        0x82b -> :sswitch_2f
        0x82c -> :sswitch_2e
        0x82d -> :sswitch_2d
        0x82e -> :sswitch_2c
        0x82f -> :sswitch_2b
        0x830 -> :sswitch_2a
        0x831 -> :sswitch_29
        0x832 -> :sswitch_28
        0x833 -> :sswitch_27
        0x837 -> :sswitch_26
        0x838 -> :sswitch_25
        0x839 -> :sswitch_24
        0x84a -> :sswitch_23
        0x84b -> :sswitch_22
        0x84c -> :sswitch_21
        0x84d -> :sswitch_20
        0x84e -> :sswitch_1f
        0x84f -> :sswitch_1e
        0x850 -> :sswitch_1d
        0x855 -> :sswitch_1c
        0x857 -> :sswitch_1b
        0x858 -> :sswitch_1a
        0x859 -> :sswitch_19
        0x85a -> :sswitch_18
        0x85b -> :sswitch_17
        0x85d -> :sswitch_16
        0x873 -> :sswitch_15
        0x874 -> :sswitch_14
        0x876 -> :sswitch_13
        0x877 -> :sswitch_12
        0x87a -> :sswitch_11
        0x87c -> :sswitch_10
        0x87e -> :sswitch_f
        0x87f -> :sswitch_e
        0x880 -> :sswitch_d
        0x881 -> :sswitch_c
        0x882 -> :sswitch_b
        0x883 -> :sswitch_a
        0x884 -> :sswitch_9
        0x885 -> :sswitch_8
        0x886 -> :sswitch_7
        0x887 -> :sswitch_6
        0x888 -> :sswitch_5
        0x889 -> :sswitch_4
        0x88a -> :sswitch_3
        0x88b -> :sswitch_2
        0x88c -> :sswitch_1
        0x88d -> :sswitch_0
    .end sparse-switch
.end method

.method private resetMtkProxyAndRequestList(I)V
    .locals 5
    .param p1, "service"    # I

    .line 5357
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    .line 5359
    if-nez v0, :cond_0

    .line 5360
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    goto :goto_1

    .line 5362
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 5358
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 5366
    :cond_2
    if-nez p1, :cond_3

    .line 5367
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    goto :goto_2

    .line 5369
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 5373
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetMtkProxyAndRequestList, service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRadioVersionMtk: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5377
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 5379
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(IZ)V

    .line 5381
    invoke-static {}, Lcom/mediatek/ims/ril/RILRequest;->resetSerial()V

    .line 5383
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearRequestList(IZ)V

    .line 5388
    if-nez p1, :cond_5

    .line 5389
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5390
    .local v0, "mtkProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_4

    .line 5392
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->notifyImsServiceReady()V

    goto :goto_3

    .line 5394
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v2, 0x8

    .line 5395
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5394
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5397
    .end local v0    # "mtkProxy":Landroid/hidl/base/V1_0/IBase;
    :goto_3
    goto :goto_4

    .line 5398
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    .line 5399
    .local v0, "serviceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5400
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v3, 0xc

    .line 5401
    invoke-virtual {v1, v3, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    .line 5400
    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5405
    .end local v0    # "serviceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :cond_6
    :goto_4
    return-void
.end method

.method private declared-synchronized resetProxyAndRequestList(I)V
    .locals 5
    .param p1, "service"    # I

    monitor-enter p0

    .line 934
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 935
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-gt v0, v2, :cond_1

    .line 936
    if-nez v0, :cond_0

    .line 937
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    goto :goto_1

    .line 939
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/RadioServiceProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 935
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 943
    :cond_2
    if-nez p1, :cond_3

    .line 944
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    goto :goto_2

    .line 946
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioServiceProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 951
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 955
    const/4 v0, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(IZ)V

    .line 957
    invoke-static {}, Lcom/mediatek/ims/ril/RILRequest;->resetSerial()V

    .line 959
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearRequestList(IZ)V

    .line 964
    if-nez p1, :cond_4

    .line 965
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    goto :goto_3

    .line 967
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v1

    .line 968
    .local v1, "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 969
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v3, 0xb

    .line 970
    invoke-virtual {v2, v3, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    .line 969
    invoke-virtual {v2, v0, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    .end local v1    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    .line 933
    .end local p1    # "service":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # I

    .line 4923
    sparse-switch p0, :sswitch_data_0

    .line 5006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown response>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4960
    :sswitch_0
    const-string v0, "RIL_UNSOL_IMS_REG_FLAG_IND"

    return-object v0

    .line 5003
    :sswitch_1
    const-string v0, "RIL_UNSOL_VIDEO_RINGTONE_EVENT_IND"

    return-object v0

    .line 4985
    :sswitch_2
    const-string v0, "RIL_UNSOL_IMS_DIALOG_INDICATION"

    return-object v0

    .line 5005
    :sswitch_3
    const-string v0, "RIL_UNSOL_CALL_RAT_INDICATION"

    return-object v0

    .line 4999
    :sswitch_4
    const-string v0, "RIL_UNSOL_CALL_ADDITIONAL_INFO"

    return-object v0

    .line 5001
    :sswitch_5
    const-string v0, "RIL_UNSOL_SIP_HEADER"

    return-object v0

    .line 4997
    :sswitch_6
    const-string v0, "RIL_UNSOL_VOPS_INDICATION"

    return-object v0

    .line 4995
    :sswitch_7
    const-string v0, "RIL_UNSOL_AUDIO_INDICATION"

    return-object v0

    .line 4993
    :sswitch_8
    const-string v0, "RIL_UNSOL_RTT_MODIFY_REQUEST_RECEIVE"

    return-object v0

    .line 4991
    :sswitch_9
    const-string v0, "RIL_UNSOL_RTT_CAPABILITY_INDICATION"

    return-object v0

    .line 4989
    :sswitch_a
    const-string v0, "RIL_UNSOL_RTT_TEXT_RECEIVE"

    return-object v0

    .line 4987
    :sswitch_b
    const-string v0, "RIL_UNSOL_RTT_MODIFY_RESPONSE"

    return-object v0

    .line 4979
    :sswitch_c
    const-string v0, "RIL_UNSOL_NO_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4977
    :sswitch_d
    const-string v0, "UNSOL_CDMA_NEW_SMS_EX"

    return-object v0

    .line 4975
    :sswitch_e
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_SMS_EX"

    return-object v0

    .line 4973
    :sswitch_f
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT_EX"

    return-object v0

    .line 4963
    :sswitch_10
    const-string v0, "RIL_UNSOL_IMS_DATA_INFO_NOTIFY"

    return-object v0

    .line 4945
    :sswitch_11
    const-string v0, "ImsRILConstants.RIL_UNSOL_ON_VOLTE_SUBSCRIPTION"

    return-object v0

    .line 4971
    :sswitch_12
    const-string v0, "IMS_CONFIG_LOADED"

    return-object v0

    .line 4967
    :sswitch_13
    const-string v0, "IMS_CONFIG_CHANGED"

    return-object v0

    .line 4969
    :sswitch_14
    const-string v0, "IMS_FEATURE_CHANGED"

    return-object v0

    .line 4965
    :sswitch_15
    const-string v0, "DYNAMIC_IMS_SWITCH_COMPLETE"

    return-object v0

    .line 4983
    :sswitch_16
    const-string v0, "RIL_UNSOL_LTE_MESSAGE_WAITING_INDICATION"

    return-object v0

    .line 4981
    :sswitch_17
    const-string v0, "RIL_UNSOL_IMS_CONFERENCE_INFO_INDICATION"

    return-object v0

    .line 4957
    :sswitch_18
    const-string v0, "IMS_DEREG_DONE"

    return-object v0

    .line 4962
    :sswitch_19
    const-string v0, "RIL_UNSOL_IMS_BEARER_INIT"

    return-object v0

    .line 4961
    :sswitch_1a
    const-string v0, "IMS_BEARER_STATE_NOTIFY"

    return-object v0

    .line 4959
    :sswitch_1b
    const-string v0, "VOLTE_SETTING"

    return-object v0

    .line 4958
    :sswitch_1c
    const-string v0, "ECT_INDICATION"

    return-object v0

    .line 4956
    :sswitch_1d
    const-string v0, "IMS_DISABLE_START"

    return-object v0

    .line 4955
    :sswitch_1e
    const-string v0, "IMS_ENABLE_START"

    return-object v0

    .line 4954
    :sswitch_1f
    const-string v0, "IMS_DISABLE_DONE"

    return-object v0

    .line 4953
    :sswitch_20
    const-string v0, "IMS_ENABLE_DONE"

    return-object v0

    .line 4951
    :sswitch_21
    const-string v0, "IMS_REGISTRATION_INFO"

    return-object v0

    .line 4949
    :sswitch_22
    const-string v0, "IMS_EVENT_PACKAGE_INDICATION"

    return-object v0

    .line 4943
    :sswitch_23
    const-string v0, "ON_XUI"

    return-object v0

    .line 4942
    :sswitch_24
    const-string v0, "UNSOL_IMS_RTP_INFO"

    return-object v0

    .line 4941
    :sswitch_25
    const-string v0, "GET_PROVISION_DONE"

    return-object v0

    .line 4940
    :sswitch_26
    const-string v0, "ON_USSI"

    return-object v0

    .line 4939
    :sswitch_27
    const-string v0, "VIDEO_CAPABILITY_INDICATOR"

    return-object v0

    .line 4937
    :sswitch_28
    const-string v0, "CALLMOD_CHANGE_INDICATOR"

    return-object v0

    .line 4935
    :sswitch_29
    const-string v0, "SIP_CALL_PROGRESS_INDICATOR"

    return-object v0

    .line 4933
    :sswitch_2a
    const-string v0, "ECONF_RESULT_INDICATION"

    return-object v0

    .line 4929
    :sswitch_2b
    const-string v0, "CALL_INFO_INDICATION"

    return-object v0

    .line 4952
    :sswitch_2c
    const-string v0, "SPEECH_CODEC_INFO"

    return-object v0

    .line 4932
    :sswitch_2d
    const-string v0, "CIPHER_INDICATION"

    return-object v0

    .line 4931
    :sswitch_2e
    const-string v0, "INCOMING_CALL_INDICATION"

    return-object v0

    .line 4928
    :sswitch_2f
    const-string v0, "RIL_UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4926
    :sswitch_30
    const-string v0, "RIL_UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4947
    :sswitch_31
    const-string v0, "RIL_UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 4924
    :sswitch_32
    const-string v0, "RADIO_STATE_CHANGED"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_32
        0x3f3 -> :sswitch_31
        0x400 -> :sswitch_30
        0x409 -> :sswitch_2f
        0xbc7 -> :sswitch_2e
        0xbd0 -> :sswitch_2d
        0xbd3 -> :sswitch_2c
        0xbd7 -> :sswitch_2b
        0xbd8 -> :sswitch_2a
        0xbd9 -> :sswitch_29
        0xbda -> :sswitch_28
        0xbdb -> :sswitch_27
        0xbdc -> :sswitch_26
        0xbdd -> :sswitch_25
        0xbde -> :sswitch_24
        0xbdf -> :sswitch_23
        0xbe0 -> :sswitch_22
        0xbe1 -> :sswitch_21
        0xbe2 -> :sswitch_20
        0xbe3 -> :sswitch_1f
        0xbe4 -> :sswitch_1e
        0xbe5 -> :sswitch_1d
        0xbe6 -> :sswitch_1c
        0xbe7 -> :sswitch_1b
        0xbe9 -> :sswitch_1a
        0xbeb -> :sswitch_19
        0xbec -> :sswitch_18
        0xc11 -> :sswitch_17
        0xc12 -> :sswitch_16
        0xc13 -> :sswitch_15
        0xc14 -> :sswitch_14
        0xc15 -> :sswitch_13
        0xc16 -> :sswitch_12
        0xc26 -> :sswitch_11
        0xc27 -> :sswitch_10
        0xc28 -> :sswitch_f
        0xc29 -> :sswitch_e
        0xc2c -> :sswitch_d
        0xc2d -> :sswitch_c
        0xc2e -> :sswitch_b
        0xc2f -> :sswitch_a
        0xc30 -> :sswitch_9
        0xc31 -> :sswitch_8
        0xc32 -> :sswitch_7
        0xc33 -> :sswitch_6
        0xc34 -> :sswitch_5
        0xc36 -> :sswitch_4
        0xc38 -> :sswitch_3
        0xc39 -> :sswitch_2
        0xc3a -> :sswitch_1
        0xc3b -> :sswitch_0
    .end sparse-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .line 5146
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 5151
    :cond_0
    instance-of v0, p1, [I

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v0, :cond_2

    .line 5152
    move-object v0, p1

    check-cast v0, [I

    .line 5153
    .local v0, "intArray":[I
    array-length v4, v0

    .line 5154
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 5155
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_1

    .line 5156
    const/4 v5, 0x0

    .line 5157
    .local v5, "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5158
    :goto_0
    if-ge v6, v4, :cond_1

    .line 5159
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_0

    .line 5162
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5164
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 5165
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 5166
    .local v0, "strings":[Ljava/lang/String;
    array-length v4, v0

    .line 5167
    .restart local v4    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 5168
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_3

    .line 5169
    const/4 v5, 0x0

    .line 5170
    .restart local v5    # "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5171
    :goto_1
    if-ge v6, v4, :cond_3

    .line 5172
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_1

    .line 5175
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5177
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .line 5178
    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5180
    .restart local v0    # "s":Ljava/lang/String;
    :goto_2
    return-object v0
.end method

.method private sendAck(I)V
    .locals 6
    .param p1, "service"    # I

    .line 4360
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x320

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 4362
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 4363
    const-string v1, "sendAck: "

    const-string v3, "sendAck"

    const-string v4, "IMS_RILA"

    if-nez p1, :cond_1

    .line 4364
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v2

    .line 4365
    .local v2, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v2, :cond_0

    .line 4367
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4371
    :goto_0
    goto :goto_1

    .line 4368
    :catch_0
    move-exception v4

    .line 4369
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-direct {p0, v5, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 4373
    :cond_0
    const-string v1, "Error trying to send ack, radioProxy = null"

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    .end local v2    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    :goto_1
    goto :goto_3

    .line 4376
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v2

    .line 4377
    .local v2, "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4379
    :try_start_1
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RadioServiceProxy;->responseAcknowledgement()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4383
    :goto_2
    goto :goto_3

    .line 4380
    :catch_1
    move-exception v4

    .line 4381
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 4385
    :cond_2
    const-string v1, "Error trying to send ack, serviceProxy is empty"

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    .end local v2    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    :goto_3
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4389
    return-void
.end method

.method private sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V
    .locals 11
    .param p1, "dqrr"    # Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    .line 4044
    iget-object v0, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 4045
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const-class v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 4046
    .local v1, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v2

    const-string v3, "] request: "

    const-string v4, "get RadioProxy null. (["

    const-string v5, ")"

    if-eqz v2, :cond_0

    .line 4047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4048
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4047
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 4049
    return-void

    .line 4052
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "> "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " (by DtmfQueueRR)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4055
    const/4 v2, 0x0

    .line 4056
    .local v2, "params":[Ljava/lang/Object;
    const/4 v6, 0x1

    :try_start_0
    iget v7, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, " params error. ("

    const-string v9, "request "

    const/4 v10, 0x0

    sparse-switch v7, :sswitch_data_0

    .line 4090
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4074
    :sswitch_0
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->explicitCallTransfer(I)V

    .line 4075
    goto/16 :goto_1

    .line 4064
    :sswitch_1
    iget-object v3, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    move-object v2, v3

    .line 4065
    array-length v3, v2

    if-eq v3, v6, :cond_1

    .line 4066
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4067
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4066
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4069
    :cond_1
    aget-object v3, v2, v10

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4070
    .local v3, "gsmIndex":I
    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v4, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->separateConnection(II)V

    .line 4072
    .end local v3    # "gsmIndex":I
    goto/16 :goto_1

    .line 4087
    :sswitch_2
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->stopDtmf(I)V

    .line 4088
    goto/16 :goto_1

    .line 4077
    :sswitch_3
    iget-object v3, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    move-object v2, v3

    .line 4078
    array-length v3, v2

    if-eq v3, v6, :cond_2

    .line 4079
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4080
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4079
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_1

    .line 4082
    :cond_2
    aget-object v3, v2, v10

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 4083
    .local v3, "c":C
    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->startDtmf(ILjava/lang/String;)V

    .line 4085
    .end local v3    # "c":C
    goto :goto_1

    .line 4061
    :sswitch_4
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->conference(I)V

    .line 4062
    goto :goto_1

    .line 4058
    :sswitch_5
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->switchWaitingOrHoldingAndActive(I)V

    .line 4059
    goto :goto_1

    .line 4090
    :goto_0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4091
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4090
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4096
    .end local v2    # "params":[Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 4093
    :catch_0
    move-exception v2

    .line 4094
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DtmfQueueRR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4095
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4094
    invoke-direct {p0, v6, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4097
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x34 -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendMtkAck(I)V
    .locals 5
    .param p1, "service"    # I

    .line 4396
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x320

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 4398
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 4399
    const-string v1, "IMS_RILA"

    if-nez p1, :cond_2

    .line 4400
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v2

    .line 4401
    .local v2, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v2, :cond_1

    .line 4403
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4404
    move-object v1, v2

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 4405
    invoke-interface {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 4407
    :cond_0
    move-object v1, v2

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 4408
    invoke-interface {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->responseAcknowledgementMtk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4410
    :catch_0
    move-exception v1

    .line 4411
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "sendMtkAck"

    invoke-direct {p0, v3, v4, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMtkAck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 4413
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 4415
    :cond_1
    const-string v3, "Error trying to send MTK ack, MtkRadioProxy = null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    .end local v2    # "radioProxy":Landroid/hidl/base/V1_0/IBase;
    :goto_1
    goto :goto_3

    .line 4418
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v2

    .line 4419
    .local v2, "serviceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4421
    :try_start_1
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->responseAcknowledgementMtk()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4425
    :goto_2
    goto :goto_3

    .line 4422
    :catch_1
    move-exception v1

    .line 4423
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "sendAck"

    invoke-direct {p0, p1, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 4427
    :cond_3
    const-string v3, "Error trying to send MTK ack, MtkRadioExServiceProxy is empty"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    .end local v2    # "serviceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :goto_3
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4432
    return-void
.end method

.method private static serviceToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "service"    # I

    .line 5916
    packed-switch p0, :pswitch_data_0

    .line 5932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5924
    :pswitch_0
    const-string v0, "NETWORK"

    return-object v0

    .line 5926
    :pswitch_1
    const-string v0, "MODEM"

    return-object v0

    .line 5928
    :pswitch_2
    const-string v0, "SIM"

    return-object v0

    .line 5930
    :pswitch_3
    const-string v0, "VOICE"

    return-object v0

    .line 5918
    :pswitch_4
    const-string v0, "RADIO"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->accept(Landroid/os/Message;)V

    .line 5230
    return-void
.end method

.method public accept(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 1655
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1656
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1657
    const/16 v1, 0x28

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1660
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1663
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->acceptCall(I)V

    .line 1664
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    goto :goto_0

    .line 1665
    :catch_0
    move-exception v2

    .line 1666
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "acceptCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1669
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acceptVideoCall(II)V
    .locals 1
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acceptVideoCall(IILandroid/os/Message;)V

    .line 5347
    return-void
.end method

.method public acceptVideoCall(IILandroid/os/Message;)V
    .locals 5
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1681
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 1683
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1684
    const/16 v1, 0x81c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1688
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1689
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " videoMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1688
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1693
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->videoCallAccept(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    goto :goto_0

    .line 1694
    :catch_0
    move-exception v2

    .line 1695
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "acceptCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1698
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSmsEx(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4511
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4512
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4513
    const/16 v1, 0x87c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4517
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4522
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->acknowledgeLastIncomingCdmaSmsEx(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4526
    goto :goto_0

    .line 4523
    :catch_0
    move-exception v2

    .line 4524
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4528
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4490
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4491
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4492
    const/16 v1, 0x87a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4496
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4501
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->acknowledgeLastIncomingGsmSmsEx(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4505
    goto :goto_0

    .line 4502
    :catch_0
    move-exception v2

    .line 4503
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4507
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public approveEccRedial(IILandroid/os/Message;)V
    .locals 5
    .param p1, "approve"    # I
    .param p2, "callId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1710
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 1712
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1713
    const/16 v1, 0x889

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1716
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1717
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " approve = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1716
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1721
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->eccRedialApprove(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    goto :goto_0

    .line 1722
    :catch_0
    move-exception v2

    .line 1723
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "approveEccRedial"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1726
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public cancelPendingUssi(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3058
    const-string v0, "persist.vendor.ims.ussi.ap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3060
    const-string v0, "Wrap cancelPendingUssi"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3063
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3064
    return-void

    .line 3067
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3068
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3069
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3070
    const/16 v1, 0x82e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3074
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3075
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3074
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3079
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->cancelUssi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3082
    goto :goto_0

    .line 3080
    :catch_0
    move-exception v2

    .line 3081
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "cancelUssi"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3084
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 4750
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4751
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4752
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 4753
    const-string v2, "IMS_RILA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearRequestList  mWakeLockCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4758
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/RILRequest;

    .line 4759
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz p2, :cond_1

    .line 4760
    const-string v4, "IMS_RILA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4761
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4760
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/ims/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 4764
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4765
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4757
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4767
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 4768
    .end local v1    # "count":I
    monitor-exit v0

    .line 4769
    return-void

    .line 4768
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1871
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1872
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1873
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1876
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1879
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 1881
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .line 2939
    if-nez p1, :cond_0

    .line 2940
    const-string v0, "Participants MUST NOT be null in conferenceDial"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 2941
    return-void

    .line 2944
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2945
    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2947
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2948
    const/16 v1, 0x829

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2952
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2953
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clirMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVideoCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2952
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2958
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->conferenceDial(I[Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2962
    goto :goto_0

    .line 2959
    :catch_0
    move-exception v2

    .line 2960
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "IMS_RILA"

    const-string v4, "conferenceDial failed"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    const/4 v3, 0x1

    const-string v4, "conferenceDial"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2964
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public deregisterIms(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2023
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->deregisterImsWithCause(ILandroid/os/Message;)V

    .line 2024
    return-void
.end method

.method public deregisterImsWithCause(ILandroid/os/Message;)V
    .locals 5
    .param p1, "cause"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2035
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2036
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2037
    const/16 v1, 0x822

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2041
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2042
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2041
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2046
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2047
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2048
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->imsDeregNotification(II)V

    goto :goto_0

    .line 2050
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2051
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->imsDeregNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    :goto_0
    goto :goto_1

    .line 2053
    :catch_0
    move-exception v2

    .line 2054
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "imsDeregNotification"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2057
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2852
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 2853
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 2867
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "> "

    if-nez v0, :cond_1

    .line 2868
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2869
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2870
    const/16 v3, 0x832

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, p4, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 2875
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2878
    :try_start_0
    iget v2, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->dial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2881
    goto :goto_0

    .line 2879
    :catch_0
    move-exception v2

    .line 2880
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "dial"

    invoke-direct {p0, v1, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2883
    .end local v0    # "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    goto :goto_1

    .line 2885
    :cond_1
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2887
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2888
    const/16 v3, 0x826

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, p4, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 2893
    .restart local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2896
    :try_start_1
    iget v2, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->dialWithSipUri(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2899
    goto :goto_1

    .line 2897
    :catch_1
    move-exception v2

    .line 2898
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "dialWithSipUri"

    invoke-direct {p0, v1, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2902
    .end local v0    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_2
    :goto_1
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1789
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1790
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1791
    const/16 v1, 0x48

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1795
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1798
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 1800
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public forceHangup(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5334
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->forceHangup(ILandroid/os/Message;)V

    .line 5335
    return-void
.end method

.method public forceHangup(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceHangup with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->forceHangup(ILandroid/os/Message;)V

    .line 5341
    return-void
.end method

.method public forceHangup(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3731
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3732
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3734
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3735
    const/16 v1, 0x7f2

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3738
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3743
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->forceReleaseCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3746
    goto :goto_0

    .line 3744
    :catch_0
    move-exception v2

    .line 3745
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "forceHangup"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3748
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getBarringCalls(ILandroid/os/Message;)V
    .locals 5
    .param p1, "serviceClass"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3604
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3605
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3607
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3608
    const/16 v1, 0x88c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3611
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3613
    const-string v2, "getBarringCalls does not support"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3616
    if-eqz p2, :cond_0

    .line 3617
    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 3619
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 3617
    invoke-static {p2, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3620
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3623
    :cond_0
    return-void

    .line 3627
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3628
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3627
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3633
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getBarringCalls(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3636
    goto :goto_0

    .line 3634
    :catch_0
    move-exception v2

    .line 3635
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getBarringCalls"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3638
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3254
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3255
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3256
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3258
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3260
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getClir(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3263
    goto :goto_0

    .line 3261
    :catch_0
    move-exception v2

    .line 3262
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getCLIR"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3265
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3385
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3386
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3387
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3388
    const/16 v1, 0x838

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3392
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3396
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->getColp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3399
    goto :goto_0

    .line 3397
    :catch_0
    move-exception v2

    .line 3398
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "getCOLP"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3401
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3336
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3337
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3338
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3339
    const/16 v1, 0x839

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3343
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3347
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->getColr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3350
    goto :goto_0

    .line 3348
    :catch_0
    move-exception v2

    .line 3349
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "getCOLR"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3352
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgFeatureValue(IILandroid/os/Message;)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2573
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2575
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2576
    const/16 v1, 0x859

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2580
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getImsCfgFeatureValue(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2583
    goto :goto_0

    .line 2581
    :catch_0
    move-exception v2

    .line 2582
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getImsCfgFeatureValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2585
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgProvisionValue(ILandroid/os/Message;)V
    .locals 5
    .param p1, "configId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2616
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2618
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2619
    const/16 v1, 0x85b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2623
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getImsCfgProvisionValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2626
    goto :goto_0

    .line 2624
    :catch_0
    move-exception v2

    .line 2625
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getImsCfgProvisionValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2628
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgResourceCapValue(ILandroid/os/Message;)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2637
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2639
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2640
    const/16 v1, 0x85d    # 3.0E-42f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2644
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getImsCfgResourceCapValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2647
    goto :goto_0

    .line 2645
    :catch_0
    move-exception v2

    .line 2646
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getImsCfgResourceCapValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2649
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastCallFailCause(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5274
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    .line 5275
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2750
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2751
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2752
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2756
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2757
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2756
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2761
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getLastCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2764
    goto :goto_0

    .line 2762
    :catch_0
    move-exception v2

    .line 2763
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getLastCallFailCause"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2766
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getMtkHalVersion()Lcom/android/internal/telephony/HalVersion;
    .locals 1

    .line 5912
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method

.method public declared-synchronized getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    .locals 9
    .param p1, "service"    # I
    .param p2, "result"    # Landroid/os/Message;

    monitor-enter p0

    .line 5566
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMtkRadioExServiceProxy mPhoneId invalid, return empty RadioServiceProxy,, service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5569
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5572
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsCellularSupported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 5573
    const-string v0, "getMtkRadioExServiceProxy: Not calling getService(): wifi-only"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5574
    if-eqz p2, :cond_1

    .line 5575
    nop

    .line 5576
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 5575
    invoke-static {p2, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5577
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 5580
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5583
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    .line 5584
    .local v0, "mtkServiceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    .line 5585
    monitor-exit p0

    return-object v0

    .line 5589
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_3
    const/4 v3, 0x0

    .line 5590
    .local v3, "isDeclared":Z
    const/4 v4, 0x0

    .line 5591
    .local v4, "binder":Landroid/os/IBinder;
    const/4 v5, 0x0

    .line 5592
    .local v5, "serviceName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    goto/16 :goto_0

    .line 5656
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :pswitch_0
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5657
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 5658
    invoke-static {v5}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    .line 5659
    if-eqz v3, :cond_4

    .line 5660
    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    move-object v4, v6

    .line 5661
    if-eqz v4, :cond_4

    .line 5662
    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5663
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMtkRadioProxy modem getMtkRadioExServiceProxy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5664
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5666
    invoke-static {v4}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    move-result-object v8

    .line 5664
    invoke-virtual {v6, v7, v8}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;)V

    goto/16 :goto_0

    .line 5671
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5673
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 5674
    invoke-static {v5}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    .line 5675
    if-eqz v3, :cond_4

    .line 5676
    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    move-object v4, v6

    .line 5677
    if-eqz v4, :cond_4

    .line 5678
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMtkRadioExServiceProxy, voice mMtkRadioVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5679
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5681
    invoke-static {v4}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    move-result-object v8

    .line 5679
    invoke-virtual {v6, v7, v8}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;)V

    goto :goto_0

    .line 5686
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5687
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 5688
    invoke-static {v5}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    .line 5689
    if-eqz v3, :cond_4

    .line 5690
    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    move-object v4, v6

    .line 5691
    if-eqz v4, :cond_4

    .line 5692
    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMtkRadioExServiceProxy, ims mMtkRadioVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5694
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5696
    invoke-static {v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    move-result-object v8

    .line 5694
    invoke-virtual {v6, v7, v8}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;)V

    .line 5702
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isAidl()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5703
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 5733
    :pswitch_3
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;

    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 5734
    invoke-virtual {v7}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    move-result-object v7

    invoke-interface {v7}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 5733
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 5735
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExModemResponse:Lcom/mediatek/ims/ril/MtkRadioExModemResponse;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExModemIndication:Lcom/mediatek/ims/ril/MtkRadioExModemIndication;

    .line 5736
    invoke-interface {v6, v7, v8}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->setResponseFunctionsMtkIms(Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication;)V

    .line 5738
    goto :goto_1

    .line 5740
    :pswitch_4
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;

    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 5741
    invoke-virtual {v7}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    move-result-object v7

    invoke-interface {v7}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 5740
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 5742
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExVoiceResponse:Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExVoiceIndication:Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;

    .line 5743
    invoke-interface {v6, v7, v8}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setResponseFunctionsMtkIms(Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse;Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;)V

    .line 5745
    goto :goto_1

    .line 5747
    :pswitch_5
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;

    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5748
    invoke-virtual {v7}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    move-result-object v7

    invoke-interface {v7}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 5747
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 5749
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExImsResponse:Lcom/mediatek/ims/ril/MtkRadioExImsResponse;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExImsIndication:Lcom/mediatek/ims/ril/MtkRadioExImsIndication;

    .line 5750
    invoke-interface {v6, v7, v8}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;)V

    .line 5752
    :goto_1
    goto :goto_2

    .line 5754
    :cond_5
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5756
    const-string v6, "getMtkRadioExServiceProxy No AIDL, get HIDL instead."

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5757
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-nez v6, :cond_6

    .line 5758
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    .line 5761
    :cond_6
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v6, :cond_7

    .line 5762
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    invoke-virtual {v0, v6, v7}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hidl/base/V1_0/IBase;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5767
    :cond_7
    monitor-exit p0

    return-object v0

    .line 5772
    .end local v3    # "isDeclared":Z
    .end local v4    # "binder":Landroid/os/IBinder;
    .end local v5    # "serviceName":Ljava/lang/String;
    :cond_8
    :goto_2
    goto :goto_3

    .line 5769
    :catch_0
    move-exception v3

    .line 5770
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 5771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtkRadioExServiceProxy getService/setResponseFunctionsIms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5774
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMtkRadioExServiceProxy: mtkServiceProxy is empty, mMtkRadioVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5777
    if-eqz p2, :cond_9

    .line 5778
    nop

    .line 5779
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 5778
    invoke-static {p2, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5780
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5784
    :cond_9
    monitor-exit p0

    return-object v0

    .line 5565
    .end local v0    # "mtkServiceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    .end local p1    # "service":I
    .end local p2    # "result":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    .locals 1
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .line 5552
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    if-ne p1, v0, :cond_0

    .line 5553
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    return-object v0

    .line 5555
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    if-ne p1, v0, :cond_1

    .line 5556
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    return-object v0

    .line 5558
    :cond_1
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    if-ne p1, v0, :cond_2

    .line 5559
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    return-object v0

    .line 5561
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "provisionStr"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5236
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getProvisionValue(Ljava/lang/String;Landroid/os/Message;)V

    .line 5237
    return-void
.end method

.method public getProvisionValue(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "provisionStr"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2482
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2483
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2484
    const/16 v1, 0x81e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2488
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2489
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provisionStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2488
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2493
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2494
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2495
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getProvisionValue(ILjava/lang/String;)V

    goto :goto_0

    .line 2497
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2498
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getProvisionValue(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2502
    :goto_0
    goto :goto_1

    .line 2500
    :catch_0
    move-exception v2

    .line 2501
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "getProvisionValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2504
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;
    .locals 11
    .param p1, "service"    # I
    .param p2, "result"    # Landroid/os/Message;

    monitor-enter p0

    .line 1010
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioServiceProxy mPhoneId invalid, return empty RadioServiceProxy,, service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1016
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsCellularSupported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1017
    const-string v0, "getRadioServiceProxy: Not calling getService(): wifi-only"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1018
    if-eqz p2, :cond_1

    .line 1019
    nop

    .line 1020
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1019
    invoke-static {p2, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1021
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioServiceProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1027
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioServiceProxy;

    .line 1029
    .local v0, "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 1030
    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v3, :cond_4

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioServiceProxy, HIDL version, service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    monitor-exit p0

    return-object v0

    .line 1037
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ril/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_0/IRadio;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1043
    :try_start_4
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 1044
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    .line 1043
    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1047
    goto :goto_0

    .line 1045
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :catch_0
    move-exception v1

    .line 1046
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadioServiceProxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1048
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1051
    :cond_4
    :try_start_6
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v3, :cond_5

    .line 1052
    monitor-exit p0

    return-object v0

    .line 1061
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_5
    :try_start_7
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 1062
    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1063
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_6
    const/4 v3, 0x0

    .line 1064
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v6, 0x0

    .line 1065
    .local v6, "isDeclared":Z
    const/4 v7, 0x0

    .line 1066
    .local v7, "serviceName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1098
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/hardware/radio/network/IRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1099
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1100
    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    .line 1101
    if-eqz v6, :cond_7

    .line 1102
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    move-object v3, v8

    .line 1103
    if-eqz v3, :cond_7

    .line 1104
    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRadioServiceProxy: nw mRadioVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1106
    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1108
    invoke-static {v3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v10

    .line 1106
    invoke-virtual {v8, v9, v10}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/network/IRadioNetwork;)V

    goto/16 :goto_1

    .line 1113
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/hardware/radio/modem/IRadioModem;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1114
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1115
    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    .line 1116
    if-eqz v6, :cond_7

    .line 1117
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    move-object v3, v8

    .line 1118
    if-eqz v3, :cond_7

    .line 1119
    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1120
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRadioServiceProxy: modem mRadioVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1121
    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/ril/RadioModemProxy;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1123
    invoke-static {v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v10

    .line 1121
    invoke-virtual {v8, v9, v10}, Lcom/mediatek/ims/ril/RadioModemProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/modem/IRadioModem;)V

    goto/16 :goto_1

    .line 1128
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/hardware/radio/sim/IRadioSim;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1129
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1130
    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    .line 1131
    if-eqz v6, :cond_7

    .line 1132
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    move-object v3, v8

    .line 1133
    if-eqz v3, :cond_7

    .line 1134
    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1135
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRadioServiceProxy: sim mRadioVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1136
    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/ril/RadioSimProxy;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1138
    invoke-static {v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v10

    .line 1136
    invoke-virtual {v8, v9, v10}, Lcom/mediatek/ims/ril/RadioSimProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/sim/IRadioSim;)V

    goto :goto_1

    .line 1143
    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/hardware/radio/voice/IRadioVoice;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1144
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1145
    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    .line 1146
    if-eqz v6, :cond_7

    .line 1147
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    move-object v3, v8

    .line 1148
    if-eqz v3, :cond_7

    .line 1149
    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1150
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRadioServiceProxy: voice mRadioVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1151
    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1153
    invoke-static {v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v10

    .line 1151
    invoke-virtual {v8, v9, v10}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/voice/IRadioVoice;)V

    .line 1160
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v6    # "isDeclared":Z
    .end local v7    # "serviceName":Ljava/lang/String;
    :cond_7
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_e

    .line 1162
    :try_start_8
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1163
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 1162
    invoke-static {v3, v5}, Landroid/hardware/radio/V1_0/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1164
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1167
    goto :goto_2

    .line 1165
    :catch_1
    move-exception v3

    .line 1166
    .local v3, "e":Ljava/util/NoSuchElementException;
    :try_start_9
    const-string v4, "getRadioServiceProxy: NoSuchElementException "

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1168
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :goto_2
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v3, :cond_e

    .line 1169
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_6/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_6/IRadio;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1170
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_6/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_6/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1171
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 1172
    :cond_8
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1173
    invoke-static {v3}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1174
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1175
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 1176
    :cond_9
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1177
    invoke-static {v3}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1178
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1179
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 1180
    :cond_a
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1181
    invoke-static {v3}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1182
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1183
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 1184
    :cond_b
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1185
    invoke-static {v3}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1186
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1187
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 1188
    :cond_c
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1189
    invoke-static {v3}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1190
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1191
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1193
    :cond_d
    :goto_3
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/ril/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_0/IRadio;)V

    .line 1194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioServiceProxy: mRadioVersion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1199
    :cond_e
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1200
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isAidl()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1201
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_4

    .line 1215
    :pswitch_4
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    .line 1216
    invoke-virtual {v4}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->getAidl()Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v4

    invoke-interface {v4}, Landroid/hardware/radio/network/IRadioNetwork;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1215
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1217
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->getAidl()Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNetworkResponse:Lcom/mediatek/ims/ril/NetworkResponse;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNetworkIndication:Lcom/mediatek/ims/ril/NetworkIndication;

    invoke-interface {v3, v4, v5}, Landroid/hardware/radio/network/IRadioNetwork;->setResponseFunctions(Landroid/hardware/radio/network/IRadioNetworkResponse;Landroid/hardware/radio/network/IRadioNetworkIndication;)V

    .line 1219
    goto :goto_4

    .line 1221
    :pswitch_5
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/mediatek/ims/ril/RadioModemProxy;

    .line 1222
    invoke-virtual {v4}, Lcom/mediatek/ims/ril/RadioModemProxy;->getAidl()Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v4

    invoke-interface {v4}, Landroid/hardware/radio/modem/IRadioModem;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1221
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1223
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioModemProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioModemProxy;->getAidl()Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mModemResponse:Lcom/mediatek/ims/ril/ModemResponse;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mModemIndication:Lcom/mediatek/ims/ril/ModemIndication;

    invoke-interface {v3, v4, v5}, Landroid/hardware/radio/modem/IRadioModem;->setResponseFunctions(Landroid/hardware/radio/modem/IRadioModemResponse;Landroid/hardware/radio/modem/IRadioModemIndication;)V

    .line 1225
    goto :goto_4

    .line 1227
    :pswitch_6
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/mediatek/ims/ril/RadioSimProxy;

    .line 1228
    invoke-virtual {v4}, Lcom/mediatek/ims/ril/RadioSimProxy;->getAidl()Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v4

    invoke-interface {v4}, Landroid/hardware/radio/sim/IRadioSim;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1227
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1229
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioSimProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioSimProxy;->getAidl()Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSimResponse:Lcom/mediatek/ims/ril/SimResponse;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSimIndication:Lcom/mediatek/ims/ril/SimIndication;

    invoke-interface {v3, v4, v5}, Landroid/hardware/radio/sim/IRadioSim;->setResponseFunctions(Landroid/hardware/radio/sim/IRadioSimResponse;Landroid/hardware/radio/sim/IRadioSimIndication;)V

    .line 1231
    goto :goto_4

    .line 1233
    :pswitch_7
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1234
    invoke-virtual {v4}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getAidl()Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v4

    invoke-interface {v4}, Landroid/hardware/radio/voice/IRadioVoice;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1233
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1235
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getAidl()Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVoiceResponse:Lcom/mediatek/ims/ril/VoiceResponse;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVoiceIndication:Lcom/mediatek/ims/ril/VoiceIndication;

    invoke-interface {v3, v4, v5}, Landroid/hardware/radio/voice/IRadioVoice;->setResponseFunctions(Landroid/hardware/radio/voice/IRadioVoiceResponse;Landroid/hardware/radio/voice/IRadioVoiceIndication;)V

    .line 1237
    :goto_4
    goto :goto_5

    .line 1240
    :cond_f
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1243
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 1244
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 1243
    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1245
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-interface {v3, v4, v5}, Landroid/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    goto :goto_5

    .line 1241
    :cond_10
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "getRadioServiceProxy shouldn\'t be HIDL with HAL 2.0"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    .end local p1    # "service":I
    .end local p2    # "result":Landroid/os/Message;
    throw v3

    .line 1250
    .restart local v0    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    .restart local p1    # "service":I
    .restart local p2    # "result":Landroid/os/Message;
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioServiceProxy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->serviceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1251
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1250
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1257
    :goto_5
    goto :goto_6

    .line 1254
    :catch_2
    move-exception v3

    .line 1255
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_a
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 1256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioServiceProxy getService/setResponseFunctions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1259
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_6
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioServiceProxy: serviceProxy == null, mRadioVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1262
    if-eqz p2, :cond_12

    .line 1263
    nop

    .line 1264
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 1263
    invoke-static {p2, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1265
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1269
    :cond_12
    monitor-exit p0

    return-object v0

    .line 1009
    .end local v0    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    .end local p1    # "service":I
    .end local p2    # "result":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;
    .locals 1
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mediatek/ims/ril/RadioServiceProxy;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .line 989
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    if-ne p1, v0, :cond_0

    .line 990
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    return-object v0

    .line 992
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/RadioModemProxy;

    if-ne p1, v0, :cond_1

    .line 993
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    return-object v0

    .line 995
    :cond_1
    const-class v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    if-ne p1, v0, :cond_2

    .line 996
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    return-object v0

    .line 998
    :cond_2
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    if-ne p1, v0, :cond_3

    .line 999
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    return-object v0

    .line 1001
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceDomainPreference(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2660
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2662
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2663
    const/16 v1, 0x849

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2667
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2671
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getVoiceDomainPreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2674
    goto :goto_0

    .line 2672
    :catch_0
    move-exception v2

    .line 2673
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getVoiceDomainPreference"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2676
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getXcapStatus(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3525
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3526
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3527
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3528
    const/16 v1, 0x873

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3532
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3533
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3532
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3537
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getXcapStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3540
    goto :goto_0

    .line 3538
    :catch_0
    move-exception v2

    .line 3539
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getXcapStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3542
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method handleDtmfQueueNext(I)V
    .locals 6
    .param p1, "serial"    # I

    .line 4105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmfQueueNext (serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4107
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 4108
    const/4 v1, 0x0

    .line 4109
    .local v1, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->access$1500(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4110
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 4111
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->access$1500(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    .line 4112
    .local v3, "adqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    iget v4, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    if-ne v4, p1, :cond_0

    .line 4113
    move-object v1, v3

    .line 4114
    goto :goto_1

    .line 4109
    .end local v3    # "adqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4117
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 4118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from mDtmfQueue. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 4119
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4118
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_2

    .line 4121
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove first item in dtmf queue done. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4127
    :goto_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 4128
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->get()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 4129
    .local v2, "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 4131
    .local v3, "rr2":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4133
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4134
    .end local v2    # "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/mediatek/ims/ril/RILRequest;
    goto :goto_3

    .line 4135
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4136
    const-string v2, "send pending switch request"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4137
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 4138
    .local v2, "pendingReq":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4139
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setSendChldRequest()V

    .line 4140
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4143
    .end local v1    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v2    # "pendingReq":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_4
    :goto_3
    monitor-exit v0

    .line 4144
    return-void

    .line 4143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hangup(IILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1760
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 1761
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 1763
    .local v0, "mtkVoiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1765
    const/16 v1, 0x883

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1769
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1770
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1769
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1775
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->hangupWithReason(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    goto :goto_0

    .line 1776
    :catch_0
    move-exception v2

    .line 1777
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "hangupWithReason"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1780
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangup(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1736
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1737
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1738
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1742
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1743
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1742
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1746
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->hangup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1749
    goto :goto_0

    .line 1747
    :catch_0
    move-exception v2

    .line 1748
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "hangup"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1751
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupAllCall(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2774
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 2775
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 2777
    .local v0, "mtkVoiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2778
    const/16 v1, 0x7e3

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2782
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2783
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2782
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2787
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->hangupAll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2790
    goto :goto_0

    .line 2788
    :catch_0
    move-exception v2

    .line 2789
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "hangupAll"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2792
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hold(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1818
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 1820
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1821
    const/16 v1, 0x824

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1825
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1826
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1825
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1830
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->controlCall(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    goto :goto_0

    .line 1831
    :catch_0
    move-exception v2

    .line 1832
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "holdCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1835
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2688
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 2689
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getParticipantCallId(Ljava/lang/String;)I

    move-result v0

    .line 2692
    .local v0, "participantCallId":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2694
    return-void
.end method

.method public inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "confCallId"    # I
    .param p2, "callInfo"    # Lcom/mediatek/ims/ImsCallInfo;
    .param p3, "response"    # Landroid/os/Message;

    .line 2724
    const-string v0, "IMS_RILA"

    if-nez p2, :cond_0

    .line 2725
    const-string v1, "Invite participants failed, call info is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    return-void

    .line 2728
    :cond_0
    iget-object v1, p2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 2730
    .local v1, "callId":Ljava/lang/String;
    const/4 v2, -0x1

    .line 2732
    .local v2, "id":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2737
    .end local v2    # "id":I
    .local v0, "id":I
    nop

    .line 2739
    iget-object v2, p2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2740
    return-void

    .line 2733
    .end local v0    # "id":I
    .restart local v2    # "id":I
    :catch_0
    move-exception v3

    .line 2734
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invite participants failed: id is not integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    return-void
.end method

.method public merge(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5328
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->conference(Landroid/os/Message;)V

    .line 5329
    return-void
.end method

.method public notifyImsServiceReady()V
    .locals 6

    .line 5803
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 5804
    .local v1, "proxy":Landroid/hardware/radio/V1_0/IRadio;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5805
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 5807
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5808
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 5809
    invoke-interface {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->notifyImsServiceReady()V

    goto :goto_0

    .line 5811
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 5812
    invoke-interface {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->notifyImsServiceReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5814
    :catch_0
    move-exception v2

    .line 5815
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyImsServiceReady error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5816
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 5817
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify fail, send EVENT_TRIGGER_TO_FIRE_PENDING_URC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5820
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 5821
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 5822
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    .line 5821
    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5825
    :cond_2
    :goto_1
    return-void
.end method

.method processIndication(II)V
    .locals 1
    .param p1, "service"    # I
    .param p2, "indicationType"    # I

    .line 4154
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4155
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendAck(I)V

    .line 4160
    :cond_0
    return-void
.end method

.method processMtkIndication(II)V
    .locals 1
    .param p1, "service"    # I
    .param p2, "indicationType"    # I

    .line 4168
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4169
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendMtkAck(I)V

    .line 4174
    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 4
    .param p1, "serial"    # I

    .line 4178
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4179
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RILRequest;

    .line 4180
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4181
    if-nez v1, :cond_0

    .line 4182
    const-string v0, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4186
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Ack < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4191
    :goto_0
    return-void

    .line 4180
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;
    .locals 6
    .param p1, "service"    # I
    .param p2, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p3, "isProprietary"    # Z

    .line 4216
    iget v2, p2, Landroid/hardware/radio/RadioResponseInfo;->serial:I

    iget v3, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    iget v4, p2, Landroid/hardware/radio/RadioResponseInfo;->type:I

    move-object v0, p0

    move v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseInternal(IIIIZ)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method public processResponse(ILandroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;
    .locals 6
    .param p1, "service"    # I
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "isProprietary"    # Z

    .line 4202
    iget v2, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    iget v3, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v4, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    move-object v0, p0

    move v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseInternal(IIIIZ)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method public processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 2
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 4306
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    iget v1, p2, Landroid/hardware/radio/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDoneInternal(Lcom/mediatek/ims/ril/RILRequest;IILjava/lang/Object;)V

    .line 4307
    return-void
.end method

.method public processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 2
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 4292
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDoneInternal(Lcom/mediatek/ims/ril/RILRequest;IILjava/lang/Object;)V

    .line 4293
    return-void
.end method

.method public pullCall(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "isVideoCall"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 3803
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3804
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3806
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3807
    const/16 v1, 0x830

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3810
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVideoCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3816
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->pullCall(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3819
    goto :goto_0

    .line 3817
    :catch_0
    move-exception v2

    .line 3818
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "pullCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3821
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3292
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3293
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3294
    const/16 v1, 0x37

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3296
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3298
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getClip(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3301
    goto :goto_0

    .line 3299
    :catch_0
    move-exception v2

    .line 3300
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryCLIP"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3303
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3433
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3434
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3435
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3436
    const/16 v1, 0x84d

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3441
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cfreason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3446
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->queryCallForwardInTimeSlotStatus(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3450
    goto :goto_0

    .line 3447
    :catch_0
    move-exception v2

    .line 3448
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "queryCallForwardInTimeSlotStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3452
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 3190
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3191
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3192
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3195
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cfreason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3200
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getCallForwardStatus(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3203
    goto :goto_0

    .line 3201
    :catch_0
    move-exception v2

    .line 3202
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryCallForwardStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3205
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 5
    .param p1, "serviceClass"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3212
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3213
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3214
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3217
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3221
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getCallWaiting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3224
    goto :goto_0

    .line 3222
    :catch_0
    move-exception v2

    .line 3223
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryCallWaiting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3226
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 3092
    const-string v4, "A0000000871002"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 3093
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .line 3101
    const-class v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    .line 3102
    .local v0, "simProxy":Lcom/mediatek/ims/ril/RadioSimProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3103
    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3106
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " facility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3111
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3112
    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3113
    invoke-static {p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3115
    invoke-static {p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3111
    move-object v1, v0

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/RadioSimProxy;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3118
    goto :goto_0

    .line 3116
    :catch_0
    move-exception v1

    .line 3117
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "getFacilityLockForApp"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3120
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 5828
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5830
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5831
    const/16 v1, 0x887

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5835
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->querySsacStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5838
    goto :goto_0

    .line 5836
    :catch_0
    move-exception v2

    .line 5837
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryVopsStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5840
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 5788
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5790
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5791
    const/16 v1, 0x882

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5795
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->queryVopsStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5798
    goto :goto_0

    .line 5796
    :catch_0
    move-exception v2

    .line 5797
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryVopsStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5800
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public reject(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5304
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(ILandroid/os/Message;)V

    .line 5305
    return-void
.end method

.method public reject(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " reject with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(IILandroid/os/Message;)V

    .line 5311
    return-void
.end method

.method public removeParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2706
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 2707
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getParticipantCallId(Ljava/lang/String;)I

    move-result v0

    .line 2709
    .local v0, "participantCallId":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalRemoveConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2711
    return-void
.end method

.method public requestExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 3705
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3706
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3707
    const/16 v1, 0x63

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3711
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3712
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3711
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3716
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3719
    goto :goto_0

    .line 3717
    :catch_0
    move-exception v2

    .line 3718
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "exitEmergencyCallbackMode"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3721
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public resetSuppServ(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3550
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3551
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3552
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3553
    const/16 v1, 0x874

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3557
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3558
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3557
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3562
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->resetSuppServ(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3565
    goto :goto_0

    .line 3563
    :catch_0
    move-exception v2

    .line 3564
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "resetSuppServ"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3567
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public responseBearerStateConfirm(IIII)V
    .locals 1
    .param p1, "phoneid"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5255
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseBearerStateConfirm(IIILandroid/os/Message;)V

    .line 5256
    return-void
.end method

.method public responseBearerStateConfirm(IIILandroid/os/Message;)V
    .locals 5
    .param p1, "aid"    # I
    .param p2, "action"    # I
    .param p3, "status"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 3759
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3761
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3762
    const/16 v1, 0x820

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3766
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->imsBearerStateConfirm(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3769
    goto :goto_0

    .line 3767
    :catch_0
    move-exception v2

    .line 3768
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "imsBearerStateConfirm"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3771
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public resume(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1844
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 1846
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1847
    const/16 v1, 0x825

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1851
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1852
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1851
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1856
    const/4 v2, 0x1

    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->controlCall(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    goto :goto_0

    .line 1857
    :catch_0
    move-exception v3

    .line 1858
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "resumeCall"

    invoke-direct {p0, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1862
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 5189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5190
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5189
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5191
    return-void
.end method

.method riljLoge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 5194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5195
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5194
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5196
    return-void
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 5199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5200
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5199
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5201
    return-void
.end method

.method riljLogi(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 5184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5185
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5184
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5186
    return-void
.end method

.method riljLogv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 5204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5205
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5204
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5206
    return-void
.end method

.method public runGbaAuthentication(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V
    .locals 8
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # Ljava/lang/String;
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 3495
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 3497
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3498
    const/16 v1, 0x84f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3501
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3502
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nafFqdn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nafSecureProtocolId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forceRun = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " netId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3501
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3510
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3514
    goto :goto_0

    .line 3512
    :catch_0
    move-exception v1

    .line 3513
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x3

    const-string v3, "runGbaAuthentication"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3517
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 5
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1891
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1892
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1893
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1898
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1902
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->sendDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1905
    goto :goto_0

    .line 1903
    :catch_0
    move-exception v2

    .line 1904
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendDtmf"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1907
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendRttModifyRequest(IILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "newMode"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 4839
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4840
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4841
    const/16 v1, 0x87f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4845
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4846
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4845
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4851
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendRttModifyRequest(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4855
    goto :goto_0

    .line 4853
    :catch_0
    move-exception v2

    .line 4854
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendRttModifyRequest"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4858
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendRttText(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "length"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 4871
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4872
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4873
    const/16 v1, 0x880

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4877
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4878
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4877
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4885
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p3, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendRttText(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4889
    goto :goto_0

    .line 4887
    :catch_0
    move-exception v2

    .line 4888
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendRttText"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4891
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V
    .locals 21
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .param p7, "response"    # Landroid/os/Message;

    .line 4457
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    const-string v0, "3gpp"

    const-class v4, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4458
    .local v4, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4459
    const/16 v5, 0x855

    iget-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v5, v3, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v12

    .line 4463
    .local v12, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4467
    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4468
    iget v6, v12, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v5, v4

    move-object/from16 v7, p4

    move/from16 v10, p5

    move/from16 v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendImsSmsEx(ILjava/lang/String;Ljava/lang/String;[BZI)V

    goto :goto_0

    .line 4470
    :cond_0
    const-string v5, "3gpp2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4471
    iget v6, v12, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v4

    move-object/from16 v9, p6

    move/from16 v10, p5

    move/from16 v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendImsSmsEx(ILjava/lang/String;Ljava/lang/String;[BZI)V

    .line 4476
    :goto_0
    iget-object v14, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget v5, v12, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v17, 0x3

    .line 4477
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4478
    move/from16 v18, v13

    goto :goto_1

    .line 4479
    :cond_1
    const/4 v0, 0x2

    move/from16 v18, v0

    :goto_1
    const-wide/16 v19, 0x0

    .line 4476
    move/from16 v16, v5

    invoke-virtual/range {v14 .. v20}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    .line 4484
    goto :goto_2

    .line 4473
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "> SMS format Error"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4474
    return-void

    .line 4482
    :catch_0
    move-exception v0

    .line 4483
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "sendSms"

    invoke-direct {v1, v13, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4486
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_3
    :goto_2
    return-void
.end method

.method public sendUSSI(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "ussiString"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3021
    const-string v0, "persist.vendor.ims.ussi.ap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrap sendUSSI, ussiString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3026
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3027
    return-void

    .line 3030
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3031
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3032
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3033
    const/16 v1, 0x82d

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3037
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3038
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ussiString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3037
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3043
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendUssi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3046
    goto :goto_0

    .line 3044
    :catch_0
    move-exception v2

    .line 3045
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendUssi"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3048
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public sendWfcProfileInfo(IILandroid/os/Message;)V
    .locals 0
    .param p1, "wfcPreference"    # I
    .param p2, "phoneid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5249
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendWfcProfileInfo(ILandroid/os/Message;)V

    .line 5250
    return-void
.end method

.method public sendWfcProfileInfo(ILandroid/os/Message;)V
    .locals 5
    .param p1, "wfcPreference"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2822
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2824
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2825
    const/16 v1, 0x82f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2829
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2830
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wfcPreference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2829
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2835
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setWfcProfile(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2838
    goto :goto_0

    .line 2836
    :catch_0
    move-exception v2

    .line 2837
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setWfcProfile"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2840
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setBarringCalls([Lcom/mediatek/ims/MtkImsBarringCall;Landroid/os/Message;)V
    .locals 5
    .param p1, "calls"    # [Lcom/mediatek/ims/MtkImsBarringCall;
    .param p2, "result"    # Landroid/os/Message;

    .line 3648
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3649
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3651
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3652
    const/16 v1, 0x88d

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3655
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 3657
    const-string v2, "setBarringCalls does not support"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3660
    if-eqz p2, :cond_0

    .line 3661
    nop

    .line 3663
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 3661
    invoke-static {p2, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3664
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3667
    :cond_0
    return-void

    .line 3670
    :cond_1
    if-nez p1, :cond_3

    .line 3672
    const-string v2, "setBarringCalls, calls is null"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 3675
    if-eqz p2, :cond_2

    .line 3676
    nop

    .line 3678
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 3676
    invoke-static {p2, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3679
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3682
    :cond_2
    return-void

    .line 3686
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3687
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3686
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3691
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setBarringCalls(I[Lcom/mediatek/ims/MtkImsBarringCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3694
    goto :goto_0

    .line 3692
    :catch_0
    move-exception v2

    .line 3693
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setBarringCalls"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3696
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .locals 5
    .param p1, "clipEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3311
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3312
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3313
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3314
    const/16 v1, 0x837

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3318
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clipEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3323
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setClip(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3326
    goto :goto_0

    .line 3324
    :catch_0
    move-exception v2

    .line 3325
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "setCLIP"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3328
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 5
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3272
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3273
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3274
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3276
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clirMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3280
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setClir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3283
    goto :goto_0

    .line 3281
    :catch_0
    move-exception v2

    .line 3282
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setCLIR"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3285
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .locals 5
    .param p1, "colpEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3409
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3410
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3411
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3412
    const/16 v1, 0x84b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3416
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " colpEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3421
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setColp(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3424
    goto :goto_0

    .line 3422
    :catch_0
    move-exception v2

    .line 3423
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "setCOLP"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3426
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 5
    .param p1, "colrEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3360
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3361
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3362
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3363
    const/16 v1, 0x84c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3367
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " colrEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3372
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setColr(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3375
    goto :goto_0

    .line 3373
    :catch_0
    move-exception v2

    .line 3374
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "setCOLR"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3377
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 5
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 5867
    .local p1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5868
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5870
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5871
    const/16 v1, 0x88a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5875
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5879
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setCallAdditionalInfo(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5882
    goto :goto_0

    .line 5880
    :catch_0
    move-exception v2

    .line 5881
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setCallAdditionalInfo"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5884
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 3165
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3166
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3167
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 3170
    .local v8, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cfReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeSeconds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3176
    :try_start_0
    iget v2, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setCallForward(IIIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3180
    goto :goto_0

    .line 3178
    :catch_0
    move-exception v1

    .line 3179
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "setCallForward"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3182
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 16
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "result"    # Landroid/os/Message;

    .line 3460
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3461
    invoke-virtual {v1, v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3462
    .local v11, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v11}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3463
    const/16 v0, 0x84e

    iget-object v3, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v12

    .line 3468
    .local v12, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v12, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " action = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " cfReason = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " serviceClass = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p3

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " timeSeconds = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3474
    :try_start_0
    iget v4, v12, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v3, v11

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setCallForwardInTimeSlot(IIIILjava/lang/String;I[J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3479
    goto :goto_0

    .line 3476
    :catch_0
    move-exception v0

    .line 3477
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "setCallForwardInTimeSlot"

    invoke-direct {v1, v3, v4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 3462
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    .line 3481
    :goto_0
    return-void
.end method

.method public setCallIndication(IIII)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I
    .param p4, "cause"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5352
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setCallIndication(IIIILandroid/os/Message;)V

    .line 5353
    return-void
.end method

.method public setCallIndication(IIIILandroid/os/Message;)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I
    .param p4, "cause"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1993
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 1994
    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 1996
    .local v0, "mtkVoiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1997
    const/16 v1, 0x7e0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 2001
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2002
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seqNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2001
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2007
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setCallIndication(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    goto :goto_0

    .line 2008
    :catch_0
    move-exception v1

    .line 2009
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "setCallIndication"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2012
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3233
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3234
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3235
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3238
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3242
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setCallWaiting(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3245
    goto :goto_0

    .line 3243
    :catch_0
    move-exception v2

    .line 3244
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setCallWaiting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3247
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 3128
    const-string v5, "A0000000871002"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 3129
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 3137
    const-class v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    invoke-virtual {p0, v0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    .line 3138
    .local v0, "simProxy":Lcom/mediatek/ims/ril/RadioSimProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3139
    const/16 v1, 0x2b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 3142
    .local v8, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " facility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lockstate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3147
    :try_start_0
    iget v2, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3148
    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3150
    invoke-static {p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3152
    invoke-static {p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3147
    move-object v1, v0

    move v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/ims/ril/RadioSimProxy;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3155
    goto :goto_0

    .line 3153
    :catch_0
    move-exception v1

    .line 3154
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "setFacilityLockForApp"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3157
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsBearerNotification(II)V
    .locals 1
    .param p1, "phoneid"    # I
    .param p2, "enable"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5261
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsBearerNotification(ILandroid/os/Message;)V

    .line 5262
    return-void
.end method

.method public setImsBearerNotification(ILandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3781
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3783
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3784
    const/16 v1, 0x857

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3788
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsBearerNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3791
    goto :goto_0

    .line 3789
    :catch_0
    move-exception v2

    .line 3790
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setImsBearerNotification"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3793
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCallMode(ILandroid/os/Message;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 4605
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4607
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4608
    const/16 v1, 0x886

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4612
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4617
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsCallMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4620
    goto :goto_0

    .line 4618
    :catch_0
    move-exception v2

    .line 4619
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setImsCallMode"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4622
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCfg([IILandroid/os/Message;)V
    .locals 0
    .param p1, "params"    # [I
    .param p2, "phoneid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5280
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsCfg([ILandroid/os/Message;)V

    .line 5281
    return-void
.end method

.method public setImsCfg([ILandroid/os/Message;)V
    .locals 16
    .param p1, "params"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .line 2067
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    aget v3, p1, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v0

    .line 2068
    .local v7, "volteEnable":Z
    :goto_0
    aget v3, p1, v4

    if-ne v3, v4, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v0

    .line 2069
    .local v8, "vilteEnable":Z
    :goto_1
    const/4 v3, 0x2

    aget v5, p1, v3

    if-ne v5, v4, :cond_2

    move v9, v4

    goto :goto_2

    :cond_2
    move v9, v0

    .line 2070
    .local v9, "vowifiEnable":Z
    :goto_2
    const/4 v5, 0x3

    aget v6, p1, v5

    if-ne v6, v4, :cond_3

    move v10, v4

    goto :goto_3

    :cond_3
    move v10, v0

    .line 2071
    .local v10, "viwifiEnable":Z
    :goto_3
    const/4 v6, 0x4

    aget v11, p1, v6

    if-ne v11, v4, :cond_4

    move v11, v4

    goto :goto_4

    :cond_4
    move v11, v0

    .line 2072
    .local v11, "smsEnable":Z
    :goto_4
    const/4 v13, 0x5

    aget v12, p1, v13

    if-ne v12, v4, :cond_5

    move v12, v4

    goto :goto_5

    :cond_5
    move v12, v0

    .line 2074
    .local v12, "eimsEnable":Z
    :goto_5
    const-class v14, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {v1, v14, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v14

    check-cast v14, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2076
    .local v14, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v14}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 2077
    const/16 v15, 0x81d

    iget-object v13, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v15, v2, v13}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v13

    .line 2081
    .local v13, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ">  "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v15, v13, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2082
    invoke-static {v15}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " volteEnable = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v0, p1, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " vilteEnable = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v6, p1, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " vowifiEnable = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " viwifiEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " smsEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x4

    aget v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " eimsEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x5

    aget v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2081
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2092
    :try_start_0
    iget v6, v13, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v5, v14

    invoke-virtual/range {v5 .. v12}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImscfg(IZZZZZZ)V

    .line 2099
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2100
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2101
    iget v0, v13, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v13, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2103
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " sent and removed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2102
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2108
    :cond_6
    goto :goto_6

    .line 2106
    :catch_0
    move-exception v0

    .line 2107
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "setImsCfg"

    invoke-direct {v1, v4, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2110
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_7
    :goto_6
    return-void
.end method

.method public setImsCfgFeatureValue(IIIILandroid/os/Message;)V
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "isLast"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2550
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2552
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2553
    const/16 v1, 0x858

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 2557
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsCfgFeatureValue(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2561
    goto :goto_0

    .line 2559
    :catch_0
    move-exception v1

    .line 2560
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "setImsCfgFeatureValue"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2563
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCfgProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "configId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2595
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2597
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2598
    const/16 v1, 0x85a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2602
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsCfgProvisionValue(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2605
    goto :goto_0

    .line 2603
    :catch_0
    move-exception v2

    .line 2604
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setImsCfgProvisionValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2607
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsRegistrationReport(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5286
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 5287
    return-void
.end method

.method public setImsRegistrationReport(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 3831
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3833
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3834
    const/16 v1, 0x831

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3838
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3842
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsRegistrationReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3845
    goto :goto_0

    .line 3843
    :catch_0
    move-exception v2

    .line 3844
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setImsRegistrationReport"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3847
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setModemImsCfg(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "keys"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 2120
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2122
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2123
    const/16 v1, 0x850

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2127
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2128
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keys = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " values = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2127
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2135
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2138
    goto :goto_0

    .line 2136
    :catch_0
    move-exception v2

    .line 2137
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendModemImsCfg"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2140
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "enableMute"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1589
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1590
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1591
    const/16 v1, 0x35

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1595
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1596
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1595
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1601
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    goto :goto_0

    .line 1602
    :catch_0
    move-exception v2

    .line 1603
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setMute"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1606
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setProvisionValue(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "provisionStr"    # Ljava/lang/String;
    .param p3, "provisionValue"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5243
    invoke-virtual {p0, p2, p3, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setProvisionValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 5244
    return-void
.end method

.method public setProvisionValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "provisionStr"    # Ljava/lang/String;
    .param p2, "provisionValue"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2516
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2517
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2518
    const/16 v1, 0x81f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2522
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2523
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provisionStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provisionValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2522
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2527
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2528
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2529
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2531
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2532
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2536
    :goto_0
    goto :goto_1

    .line 2534
    :catch_0
    move-exception v2

    .line 2535
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "setProvisionValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2538
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setRttMode(ILandroid/os/Message;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 4902
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4903
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4904
    const/16 v1, 0x87e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4908
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4909
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4908
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4914
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setRttMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4918
    goto :goto_0

    .line 4916
    :catch_0
    move-exception v2

    .line 4917
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setRttMode"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4920
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setRttModifyRequestResponse(IILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 4809
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4810
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4811
    const/16 v1, 0x881

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4815
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4816
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4815
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4821
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->rttModifyRequestResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4825
    goto :goto_0

    .line 4823
    :catch_0
    move-exception v2

    .line 4824
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "rttModifyRequestResponse"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4827
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSipHeader(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "total"    # I
    .param p2, "index"    # I
    .param p3, "headerCount"    # I
    .param p4, "headerValuePair"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .line 4543
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4545
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4546
    const/16 v1, 0x884

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4550
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4553
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4554
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4555
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4556
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4557
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4560
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setSipHeader(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4563
    goto :goto_0

    .line 4561
    :catch_0
    move-exception v3

    .line 4562
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    const-string v5, "setSipHeader"

    invoke-direct {p0, v4, v5, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4565
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSipHeaderReport(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "headerType"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 4575
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4577
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4578
    const/16 v1, 0x885

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4582
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " headerType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4586
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4587
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4588
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4591
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setSipHeaderReport(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4594
    goto :goto_0

    .line 4592
    :catch_0
    move-exception v3

    .line 4593
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    const-string v5, "setSipHeaderReport"

    invoke-direct {p0, v4, v5, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4596
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setVoiceDomainPreference(ILandroid/os/Message;)V
    .locals 5
    .param p1, "vdp"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3856
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3858
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3859
    const/16 v1, 0x84a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3862
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vdp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3866
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setVoiceDomainPreference(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3869
    goto :goto_0

    .line 3867
    :catch_0
    move-exception v2

    .line 3868
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setVoiceDomainPreference"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3871
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setupXcapUserAgentString(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3576
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3577
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3578
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3579
    const/16 v1, 0x877

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3583
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3584
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userAgent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3583
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3589
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setupXcapUserAgentString(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3592
    goto :goto_0

    .line 3590
    :catch_0
    move-exception v2

    .line 3591
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setupXcapUserAgentString"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3594
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;IZZLandroid/os/Message;)V
    .locals 7
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "clirMode"    # I
    .param p4, "isEmergency"    # Z
    .param p5, "isVideoCall"    # Z
    .param p6, "result"    # Landroid/os/Message;

    .line 1623
    if-eqz p5, :cond_0

    .line 1624
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 1625
    :cond_0
    if-eqz p4, :cond_1

    .line 1626
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->emergencyDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 1628
    :cond_1
    invoke-virtual {p0, p1, p3, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1630
    :goto_0
    return-void
.end method

.method public startConference([Ljava/lang/String;IZILandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "phoneid"    # I
    .param p5, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5268
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->startConference([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 5269
    return-void
.end method

.method public startConference([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .line 1646
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 1647
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 7
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1918
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 1919
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1920
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1921
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1922
    const-class v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1923
    .local v1, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1924
    const/16 v2, 0x31

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 1926
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->start()V

    .line 1927
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1928
    .local v4, "param":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v2, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v5

    .line 1930
    .local v5, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1931
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v6

    if-ne v6, v3, :cond_0

    .line 1932
    const-string v3, "send start dtmf"

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1935
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v2, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1936
    invoke-direct {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1939
    .end local v1    # "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "param":[Ljava/lang/Object;
    .end local v5    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 1940
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1941
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1940
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1944
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1945
    return-void

    .line 1944
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Message;

    .line 1956
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 1957
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1958
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1959
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1960
    const-class v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1961
    .local v1, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1962
    const/16 v2, 0x32

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p1, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 1964
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->stop()V

    .line 1965
    const/4 v3, 0x0

    .line 1966
    .local v3, "param":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 1968
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1969
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1970
    const-string v5, "send stop dtmf"

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1973
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1976
    .end local v1    # "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "param":[Ljava/lang/Object;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 1977
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1978
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1977
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1981
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1982
    return-void

    .line 1981
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public swap(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 2801
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2802
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2803
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2808
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2811
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 2813
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public terminate(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(ILandroid/os/Message;)V

    .line 5317
    return-void
.end method

.method public terminate(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5322
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(IILandroid/os/Message;)V

    .line 5323
    return-void
.end method

.method public toggleRttAudioIndication(IILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "enable"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 5843
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5844
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 5845
    const/16 v1, 0x888

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5848
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5853
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5854
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5855
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->toggleRttAudioIndication(III)V

    goto :goto_0

    .line 5857
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5858
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->toggleRttAudioIndication(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5862
    :goto_0
    goto :goto_1

    .line 5860
    :catch_0
    move-exception v2

    .line 5861
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "toggleRttAudioIndication"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5864
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOffIms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5292
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->turnOffIms(Landroid/os/Message;)V

    .line 5293
    return-void
.end method

.method public turnOffIms(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2180
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2181
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2182
    const/16 v1, 0x815

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2186
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2187
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2186
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2191
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2192
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2193
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsEnable(IZ)V

    goto :goto_0

    .line 2195
    :cond_0
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2196
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2200
    :goto_0
    goto :goto_1

    .line 2198
    :catch_0
    move-exception v3

    .line 2199
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setImsEnable"

    invoke-direct {p0, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2203
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOffRcsUa(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2453
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2455
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2456
    const/16 v1, 0x876

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2460
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2461
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2460
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2465
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xe

    const/4 v4, 0x0

    .line 2467
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2465
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2470
    goto :goto_0

    .line 2468
    :catch_0
    move-exception v2

    .line 2469
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2472
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffVilte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2345
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2347
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2348
    const/16 v1, 0x818

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2352
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2353
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2352
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2357
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 2359
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2357
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2362
    goto :goto_0

    .line 2360
    :catch_0
    move-exception v2

    .line 2361
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2364
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffViwifi(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2399
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2401
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2402
    const/16 v1, 0x819

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2406
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2407
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2406
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2411
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 2413
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2411
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2416
    goto :goto_0

    .line 2414
    :catch_0
    move-exception v2

    .line 2415
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2418
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffVolte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2237
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2239
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2240
    const/16 v1, 0x816

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2244
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2245
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2244
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2249
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 2251
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2249
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2254
    goto :goto_0

    .line 2252
    :catch_0
    move-exception v2

    .line 2253
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2256
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffWfc(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2291
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2293
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2294
    const/16 v1, 0x817

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2298
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2299
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2298
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2303
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 2305
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2303
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2308
    goto :goto_0

    .line 2306
    :catch_0
    move-exception v2

    .line 2307
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2310
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnIms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5298
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->turnOnIms(Landroid/os/Message;)V

    .line 5299
    return-void
.end method

.method public turnOnIms(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2149
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2150
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2151
    const/16 v1, 0x815

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2155
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2156
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2155
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2160
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2161
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2162
    invoke-interface {v2, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsEnable(IZ)V

    goto :goto_0

    .line 2164
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2165
    invoke-interface {v2, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2169
    :goto_0
    goto :goto_1

    .line 2167
    :catch_0
    move-exception v2

    .line 2168
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "setImsEnable"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2171
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOnRcsUa(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2426
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2428
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2429
    const/16 v1, 0x876

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2433
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2434
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2433
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2438
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xe

    const/4 v4, 0x1

    .line 2440
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2438
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2443
    goto :goto_0

    .line 2441
    :catch_0
    move-exception v2

    .line 2442
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2445
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnVilte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2318
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2320
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2321
    const/16 v1, 0x818

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2325
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2326
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2325
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2330
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xc

    const/4 v4, 0x1

    .line 2332
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2330
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2335
    goto :goto_0

    .line 2333
    :catch_0
    move-exception v2

    .line 2334
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2337
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnViwifi(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2372
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2374
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2375
    const/16 v1, 0x819

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2379
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2380
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2379
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2384
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xd

    const/4 v4, 0x1

    .line 2386
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2384
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2389
    goto :goto_0

    .line 2387
    :catch_0
    move-exception v2

    .line 2388
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2391
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnVolte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2210
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2212
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2213
    const/16 v1, 0x816

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2217
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2218
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2217
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2222
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xb

    const/4 v4, 0x1

    .line 2224
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2222
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2227
    goto :goto_0

    .line 2225
    :catch_0
    move-exception v2

    .line 2226
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2229
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnWfc(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2264
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2266
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2267
    const/16 v1, 0x817

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2271
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2272
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2271
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2276
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0x10

    const/4 v4, 0x1

    .line 2278
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2276
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2281
    goto :goto_0

    .line 2279
    :catch_0
    move-exception v2

    .line 2280
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2283
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public unattendedCallTransfer(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1808
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalImsEct(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1809
    return-void
.end method

.method unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 5209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5210
    return-void
.end method

.method unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 5213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5214
    return-void
.end method

.method unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 5217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5218
    return-void
.end method

.method unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 5221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 5222
    return-void
.end method

.method public videoRingtoneEventRequest(Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 5
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 5887
    .local p1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5888
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5890
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5891
    const/16 v1, 0x88b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5895
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5899
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5902
    goto :goto_0

    .line 5900
    :catch_0
    move-exception v2

    .line 5901
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "videoRingtoneEventRequest"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5904
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 2978
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2979
    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2981
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2982
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "> "

    if-nez v1, :cond_0

    .line 2983
    const/16 v1, 0x833

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2988
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2991
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, p1, p2, p3}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->vtDial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2994
    goto :goto_0

    .line 2992
    :catch_0
    move-exception v3

    .line 2993
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "vtDial"

    invoke-direct {p0, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2995
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 2996
    :cond_0
    const/16 v1, 0x82c

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3001
    .restart local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3004
    :try_start_1
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->vtDialWithSipUri(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3007
    goto :goto_1

    .line 3005
    :catch_1
    move-exception v3

    .line 3006
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v4, "vtDialWithSipUri"

    invoke-direct {p0, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3010
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method
