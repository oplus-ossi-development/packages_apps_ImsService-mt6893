.class public final Lcom/mediatek/wfo/ril/MwiRIL;
.super Lcom/mediatek/wfo/ril/MwiBaseCommands;
.source "MwiRIL.java"

# interfaces
.implements Lcom/mediatek/wfo/ril/MwiCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;,
        Lcom/mediatek/wfo/ril/MwiRIL$RadioProxyDeathRecipient;,
        Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;,
        Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;,
        Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;
    }
.end annotation


# static fields
.field private static final CLIENT_IMS:I = 0x1

.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_RADIO_RETRY_GET_SERVICE:I = 0x7

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final IMS_AIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0x7d0

.field static final MWIRIL_LOGD:Z = true

.field static final MWIRIL_LOGV:Z = false

.field static final MWIRIL_LOG_TAG:Ljava/lang/String; = "MwiRIL"

.field static final MWI_RILA_LOGD:Z = true

.field static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "MWIRIL_ACK_WL"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5


# instance fields
.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final mBinderServiceDeathRecipient:Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field mContext:Landroid/content/Context;

.field private mIsAidl:Z

.field mIsMobileNetworkSupported:Z

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field final mPhoneId:Ljava/lang/Integer;

.field private mRILDefaultWorkSource:Landroid/os/WorkSource;

.field mRadioExIndication:Lcom/mediatek/wfo/ril/MwiRadioExIndication;

.field mRadioExResponse:Lcom/mediatek/wfo/ril/MwiRadioExResponse;

.field mRadioIndication:Lcom/mediatek/wfo/ril/MwiRadioIndication;

.field volatile mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mRadioProxyDeathRecipient:Lcom/mediatek/wfo/ril/MwiRIL$RadioProxyDeathRecipient;

.field volatile mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

.field mRadioResponse:Lcom/mediatek/wfo/ril/MwiRadioResponse;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/wfo/ril/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmMetrics(Lcom/mediatek/wfo/ril/MwiRIL;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearWakeLock(Lcom/mediatek/wfo/ril/MwiRIL;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->clearWakeLock(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdecrementWakeLock(Lcom/mediatek/wfo/ril/MwiRIL;Lcom/mediatek/wfo/ril/RILRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindAndRemoveRequestFromList(Lcom/mediatek/wfo/ril/MwiRIL;I)Lcom/mediatek/wfo/ril/RILRequest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->findAndRemoveRequestFromList(I)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRadioProxy(Lcom/mediatek/wfo/ril/MwiRIL;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetProxyAndRequestList(Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->resetProxyAndRequestList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetResponseForTimedOutRILRequest(Lcom/mediatek/wfo/ril/RILRequest;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->getResponseForTimedOutRILRequest(Lcom/mediatek/wfo/ril/RILRequest;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 327
    const-string v0, "imsSlot1"

    const-string v1, "imsSlot2"

    const-string v2, "imsSlot3"

    const-string v3, "imsSlot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 329
    const-string v0, "slot1"

    const-string v1, "slot2"

    const-string v2, "slot3"

    const-string v3, "slot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL;->IMS_AIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/ril/MwiBaseCommands;-><init>(Landroid/content/Context;I)V

    .line 267
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWlSequenceNum:I

    .line 281
    iput v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWlSequenceNum:I

    .line 282
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    .line 285
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 296
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 309
    iput-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 310
    iput-boolean v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsAidl:Z

    .line 313
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 609
    iput-object p1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mContext:Landroid/content/Context;

    .line 610
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    .line 612
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 613
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsMobileNetworkSupported:Z

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MwiRIL: isDataCapable() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsMobileNetworkSupported:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 616
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRadioResponse;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioResponse;-><init>(Lcom/mediatek/wfo/ril/MwiRIL;I)V

    iput-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioResponse:Lcom/mediatek/wfo/ril/MwiRadioResponse;

    .line 617
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRadioExResponse;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioExResponse;-><init>(Lcom/mediatek/wfo/ril/MwiRIL;I)V

    iput-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioExResponse:Lcom/mediatek/wfo/ril/MwiRadioExResponse;

    .line 618
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRadioIndication;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioIndication;-><init>(Lcom/mediatek/wfo/ril/MwiRIL;I)V

    iput-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioIndication:Lcom/mediatek/wfo/ril/MwiRadioIndication;

    .line 619
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRadioExIndication;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioExIndication;-><init>(Lcom/mediatek/wfo/ril/MwiRIL;I)V

    iput-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioExIndication:Lcom/mediatek/wfo/ril/MwiRadioExIndication;

    .line 620
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    invoke-direct {v3, p0, p3}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;-><init>(Lcom/mediatek/wfo/ril/MwiRIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    .line 621
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRIL$RadioProxyDeathRecipient;

    invoke-direct {v3, p0}, Lcom/mediatek/wfo/ril/MwiRIL$RadioProxyDeathRecipient;-><init>(Lcom/mediatek/wfo/ril/MwiRIL;)V

    iput-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyDeathRecipient:Lcom/mediatek/wfo/ril/MwiRIL$RadioProxyDeathRecipient;

    .line 622
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;

    invoke-direct {v3, p0}, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;-><init>(Lcom/mediatek/wfo/ril/MwiRIL;)V

    iput-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mBinderServiceDeathRecipient:Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;

    .line 623
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 624
    .local v3, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "MwiRIL"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 625
    invoke-virtual {v5, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 626
    const-string v5, "MWIRIL_ACK_WL"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 627
    invoke-virtual {v4, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 628
    const-string v4, "ro.ril.wake_lock_timeout"

    const v5, 0xea60

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockTimeout:I

    .line 630
    const/16 v5, 0xc8

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLockTimeout:I

    .line 632
    iput v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    .line 633
    new-instance v0, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 634
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 638
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    .line 639
    return-void
.end method

.method private acquireWakeLock(Lcom/mediatek/wfo/ril/RILRequest;I)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;
    .param p2, "wakeLockType"    # I

    .line 1263
    monitor-enter p1

    .line 1264
    :try_start_0
    iget v0, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1265
    const-string v0, "MwiRIL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to aquire wakelock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    monitor-exit p1

    return-void

    .line 1269
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1305
    const-string v0, "MwiRIL"

    goto/16 :goto_2

    .line 1295
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1296
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1297
    iget v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWlSequenceNum:I

    .line 1299
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1300
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1301
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    iget v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1302
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 1303
    goto :goto_1

    .line 1302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL;
    .end local p1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_2
    throw v1

    .line 1271
    .restart local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL;
    .restart local p1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1272
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1273
    iget v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    .line 1274
    iget v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWlSequenceNum:I

    .line 1276
    iget-object v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 1277
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1278
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_1

    .line 1279
    iget-object v3, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_0

    .line 1281
    :cond_1
    iget-object v2, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 1283
    :goto_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1286
    :cond_2
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v3, p1, Lcom/mediatek/wfo/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    iget v5, p1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    iget v6, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 1289
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1290
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 1291
    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    iget v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1292
    nop

    .end local v1    # "clientId":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1293
    nop

    .line 1308
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWakeLockType:I

    .line 1309
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1310
    return-void

    .line 1292
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL;
    .end local p1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_6
    throw v1

    .line 1305
    .restart local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL;
    .restart local p1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
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

    .line 1306
    monitor-exit p1

    return-void

    .line 1309
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

.method private addRequest(Lcom/mediatek/wfo/ril/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;

    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->acquireWakeLock(Lcom/mediatek/wfo/ril/RILRequest;I)V

    .line 643
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 644
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mStartTimeMs:J

    .line 645
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 646
    monitor-exit v0

    .line 647
    return-void

    .line 646
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 1378
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1379
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1380
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 1381
    const-string v2, "MwiRIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearRequestList  mWakeLockCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

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

    .line 1385
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1386
    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/wfo/ril/RILRequest;

    .line 1387
    .local v3, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    if-eqz p2, :cond_1

    .line 1388
    const-string v4, "MwiRIL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    .line 1389
    invoke-static {v6}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1388
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/wfo/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1392
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 1393
    invoke-virtual {v3}, Lcom/mediatek/wfo/ril/RILRequest;->release()V

    .line 1385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1395
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1396
    .end local v1    # "count":I
    monitor-exit v0

    .line 1397
    return-void

    .line 1396
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearWakeLock(I)Z
    .locals 6
    .param p1, "wakeLockType"    # I

    .line 1351
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1352
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1353
    :try_start_0
    iget v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    .line 1354
    :cond_0
    const-string v3, "MwiRIL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTE: mWakeLockCount is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "at time of clearing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iput v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    .line 1357
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1358
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 1359
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 1360
    monitor-exit v2

    return v0

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1363
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1364
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    .line 1365
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1366
    monitor-exit v2

    return v0

    .line 1367
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V
    .locals 8
    .param p1, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;

    .line 1313
    monitor-enter p1

    .line 1314
    :try_start_0
    iget v0, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWakeLockType:I

    packed-switch v0, :pswitch_data_0

    .line 1344
    const-string v0, "MwiRIL"

    goto :goto_2

    .line 1340
    :pswitch_0
    goto :goto_3

    .line 1316
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1317
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/mediatek/wfo/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    iget v4, p1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    .line 1319
    iget v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 1317
    :goto_0
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 1320
    iget-object v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 1321
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_2

    .line 1323
    iget-object v3, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 1324
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1325
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 1327
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1330
    :cond_2
    iget v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    if-le v2, v7, :cond_3

    .line 1331
    sub-int/2addr v2, v7

    iput v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    goto :goto_1

    .line 1333
    :cond_3
    iput v6, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLockCount:I

    .line 1334
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1336
    .end local v1    # "clientId":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    .line 1337
    goto :goto_3

    .line 1336
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL;
    .end local p1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :try_start_2
    throw v1

    .line 1342
    .restart local p0    # "this":Lcom/mediatek/wfo/ril/MwiRIL;
    .restart local p1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :pswitch_2
    goto :goto_3

    .line 1344
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWakeLockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :goto_3
    const/4 v0, -0x1

    iput v0, p1, Lcom/mediatek/wfo/ril/RILRequest;->mWakeLockType:I

    .line 1347
    monitor-exit p1

    .line 1348
    return-void

    .line 1347
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

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/wfo/ril/RILRequest;
    .locals 3
    .param p1, "serial"    # I

    .line 1400
    const/4 v0, 0x0

    .line 1401
    .local v0, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1402
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/wfo/ril/RILRequest;

    move-object v0, v2

    .line 1403
    if-eqz v0, :cond_0

    .line 1404
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1406
    :cond_0
    monitor-exit v1

    .line 1408
    return-object v0

    .line 1406
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

    .line 1238
    if-nez p1, :cond_0

    .line 1239
    iget-object p1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1242
    :cond_0
    return-object p1
.end method

.method private getRadioProxy(Landroid/os/Message;)Z
    .locals 12
    .param p1, "result"    # Landroid/os/Message;

    .line 522
    iget-boolean v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 524
    return v1

    .line 527
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 528
    return v2

    .line 531
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/mediatek/wfo/ril/MwiRIL;->IMS_AIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 532
    iget-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "clientName":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsAidl:Z

    if-nez v3, :cond_3

    .line 534
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 535
    iput-boolean v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsAidl:Z

    .line 538
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioProxy isAidl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsAidl:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->isRildReady(Ljava/lang/String;)Z

    move-result v3

    .line 541
    .local v3, "ready":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioProxy isRildReady() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 542
    iget-boolean v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsAidl:Z

    const-wide/16 v5, 0x7d0

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    .line 543
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    const/4 v4, 0x7

    .line 544
    invoke-virtual {v2, v4}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 543
    invoke-virtual {v2, v4, v5, v6}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 546
    return v1

    .line 550
    :cond_4
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 551
    .local v7, "binder":Landroid/os/IBinder;
    if-eqz v7, :cond_5

    .line 552
    invoke-static {v7}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    goto :goto_1

    .line 554
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mRadioProxyEx binder is null: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 556
    :goto_1
    iget-object v8, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    if-eqz v8, :cond_6

    .line 557
    const-string v8, "mRadioProxyEx getService() done"

    invoke-virtual {p0, v8}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 558
    iget-object v8, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mBinderServiceDeathRecipient:Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;

    iget-object v9, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v9}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/wfo/ril/MwiRIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 559
    iget-object v8, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    iget-object v9, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioExResponse:Lcom/mediatek/wfo/ril/MwiRadioExResponse;

    iget-object v10, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioExIndication:Lcom/mediatek/wfo/ril/MwiRadioExIndication;

    invoke-interface {v8, v9, v10}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;)V

    .line 560
    iput-boolean v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsAidl:Z

    .line 561
    const-string v8, "mRadioProxyEx getService() done 2"

    invoke-virtual {p0, v8}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_3

    .line 563
    :cond_6
    sget-object v8, Lcom/mediatek/wfo/ril/MwiRIL;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 564
    iget-object v9, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v9, :cond_7

    move v9, v1

    goto :goto_2

    :cond_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_2
    aget-object v8, v8, v9

    .line 563
    invoke-static {v8}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 565
    const-string v8, "mRadioProxy getService() done"

    invoke-virtual {p0, v8}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 566
    iget-object v8, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    if-eqz v8, :cond_8

    .line 567
    const-string v8, "mRadioProxy getService() done 2"

    invoke-virtual {p0, v8}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 568
    iget-object v8, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v9, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyDeathRecipient:Lcom/mediatek/wfo/ril/MwiRIL$RadioProxyDeathRecipient;

    iget-object v10, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 569
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v10

    .line 568
    invoke-interface {v8, v9, v10, v11}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 570
    const-string v8, "mRadioProxy linkToDeath() done"

    invoke-virtual {p0, v8}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 572
    iget-object v8, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v9, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioResponse:Lcom/mediatek/wfo/ril/MwiRadioResponse;

    iget-object v10, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioIndication:Lcom/mediatek/wfo/ril/MwiRadioIndication;

    invoke-interface {v8, v9, v10}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IMwiRadioIndication;)V

    .line 573
    const-string v8, "mRadioProxy setResponseFunctionsMwi() done"

    invoke-virtual {p0, v8}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_3

    .line 576
    :cond_8
    const-string v8, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v8}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v7    # "binder":Landroid/os/IBinder;
    :goto_3
    goto :goto_4

    .line 579
    :catch_0
    move-exception v7

    .line 580
    .local v7, "e":Ljava/lang/Exception;
    iput-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 581
    iput-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 582
    iput-boolean v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsAidl:Z

    .line 583
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 586
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 587
    if-eqz p1, :cond_9

    .line 588
    nop

    .line 589
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 588
    invoke-static {p1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 590
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 594
    :cond_9
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    const/4 v4, 0x6

    iget-object v7, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 596
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 595
    invoke-virtual {v2, v4, v7}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 594
    invoke-virtual {v2, v4, v5, v6}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 598
    return v1

    .line 601
    :cond_a
    return v2
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/mediatek/wfo/ril/RILRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;

    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 1246
    if-eqz p1, :cond_0

    .line 1247
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

    .line 1250
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 656
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

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 657
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->resetProxyAndRequestList()V

    .line 661
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 663
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 662
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 661
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 665
    return-void
.end method

.method private isAidl()Z
    .locals 1

    .line 694
    iget-boolean v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsAidl:Z

    return v0
.end method

.method private isEmpty()Z
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRildReady(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 517
    iget-boolean v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsAidl:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 518
    :cond_0
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;
    .locals 1
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 650
    invoke-static {p1, p2, p3}, Lcom/mediatek/wfo/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v0

    .line 651
    .local v0, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->addRequest(Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 652
    return-object v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 1441
    sparse-switch p0, :sswitch_data_0

    .line 1465
    const-string v0, "<unknown request>"

    return-object v0

    .line 1464
    :sswitch_0
    const-string v0, "MwiRILConstants.RIL_REQUEST_GET_WFC_CONFIG"

    return-object v0

    .line 1462
    :sswitch_1
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_WFC_CONFIG"

    return-object v0

    .line 1460
    :sswitch_2
    const-string v0, "MwiRILConstants.RIL_REQUEST_NOTIFY_EPDG_SCREEN_STATE"

    return-object v0

    .line 1457
    :sswitch_3
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_WIFI_PING_RESULT"

    return-object v0

    .line 1455
    :sswitch_4
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_NATT_KEEPALIVE_STATUS"

    return-object v0

    .line 1453
    :sswitch_5
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_EMERGENCY_ADDRESS_ID"

    return-object v0

    .line 1451
    :sswitch_6
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_GEO_LOCATION"

    return-object v0

    .line 1449
    :sswitch_7
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_WIFI_IP_ADDRESS"

    return-object v0

    .line 1447
    :sswitch_8
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_WIFI_SIGNAL_LEVEL"

    return-object v0

    .line 1445
    :sswitch_9
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_WIFI_ASSOCIATED"

    return-object v0

    .line 1443
    :sswitch_a
    const-string v0, "MwiRILConstants.RIL_REQUEST_SET_WIFI_ENABLED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x844 -> :sswitch_a
        0x845 -> :sswitch_9
        0x846 -> :sswitch_8
        0x847 -> :sswitch_7
        0x848 -> :sswitch_6
        0x849 -> :sswitch_5
        0x853 -> :sswitch_4
        0x854 -> :sswitch_3
        0x883 -> :sswitch_2
        0x88b -> :sswitch_1
        0x88c -> :sswitch_0
    .end sparse-switch
.end method

.method private resetProxyAndRequestList()V
    .locals 2

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 499
    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mIsAidl:Z

    .line 503
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 507
    invoke-static {}, Lcom/mediatek/wfo/ril/RILRequest;->resetSerial()V

    .line 509
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->clearRequestList(IZ)V

    .line 514
    return-void
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 1413
    sparse-switch p0, :sswitch_data_0

    .line 1436
    const-string v0, "<unknown response>"

    return-object v0

    .line 1435
    :sswitch_0
    const-string v0, "MwiRILConstants.RIL_UNSOL_WIFI_LOCK"

    return-object v0

    .line 1433
    :sswitch_1
    const-string v0, "MwiRILConstants.RIL_UNSOL_WIFI_PDN_OOS"

    return-object v0

    .line 1431
    :sswitch_2
    const-string v0, "MwiRILConstants.RIL_UNSOL_WIFI_PING_REQUEST"

    return-object v0

    .line 1429
    :sswitch_3
    const-string v0, "MwiRILConstants.RIL_UNSOL_NATT_KEEP_ALIVE_CHANGED"

    return-object v0

    .line 1427
    :sswitch_4
    const-string v0, "MwiRILConstants.RIL_UNSOL_WFC_PDN_STATE"

    return-object v0

    .line 1425
    :sswitch_5
    const-string v0, "MwiRILConstants.RIL_UNSOL_REQUEST_GEO_LOCATION"

    return-object v0

    .line 1423
    :sswitch_6
    const-string v0, "MwiRILConstants.RIL_UNSOL_WIFI_PDN_ERROR"

    return-object v0

    .line 1421
    :sswitch_7
    const-string v0, "MwiRILConstants.RIL_UNSOL_WIFI_RSSI_MONITORING_CONFIG"

    return-object v0

    .line 1419
    :sswitch_8
    const-string v0, "MwiRILConstants.RIL_UNSOL_ACTIVE_WIFI_PDN_COUNT"

    return-object v0

    .line 1417
    :sswitch_9
    const-string v0, "MwiRILConstants.RIL_UNSOL_MOBILE_WIFI_HANDOVER"

    return-object v0

    .line 1415
    :sswitch_a
    const-string v0, "MwiRILConstants.RIL_UNSOL_MOBILE_WIFI_ROVEOUT"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc03 -> :sswitch_a
        0xc04 -> :sswitch_9
        0xc05 -> :sswitch_8
        0xc06 -> :sswitch_7
        0xc07 -> :sswitch_6
        0xc08 -> :sswitch_5
        0xc09 -> :sswitch_4
        0xc0e -> :sswitch_3
        0xc0f -> :sswitch_2
        0xc10 -> :sswitch_1
        0xc37 -> :sswitch_0
    .end sparse-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .line 1470
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 1475
    :cond_0
    instance-of v0, p1, [I

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v0, :cond_2

    .line 1476
    move-object v0, p1

    check-cast v0, [I

    .line 1477
    .local v0, "intArray":[I
    array-length v4, v0

    .line 1478
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 1479
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_1

    .line 1480
    const/4 v5, 0x0

    .line 1481
    .local v5, "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1482
    :goto_0
    if-ge v6, v4, :cond_1

    .line 1483
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_0

    .line 1486
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1488
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1489
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 1490
    .local v0, "strings":[Ljava/lang/String;
    array-length v4, v0

    .line 1491
    .restart local v4    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 1492
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_3

    .line 1493
    const/4 v5, 0x0

    .line 1494
    .restart local v5    # "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    :goto_1
    if-ge v6, v4, :cond_3

    .line 1496
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_1

    .line 1499
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1501
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .line 1502
    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1504
    .restart local v0    # "s":Ljava/lang/String;
    :goto_2
    return-object v0
.end method

.method private sendAck()V
    .locals 4

    .line 1216
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x320

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/mediatek/wfo/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v0

    .line 1218
    .local v0, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->acquireWakeLock(Lcom/mediatek/wfo/ril/RILRequest;I)V

    .line 1220
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    .line 1222
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    if-eqz v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    if-eqz v1, :cond_1

    .line 1225
    const-string v1, "send ack, mRadioProxyEx = null"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1226
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    invoke-interface {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 1228
    :cond_1
    const-string v1, "Error trying to send ack, radioProxy = null"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    :goto_0
    goto :goto_1

    .line 1230
    :catch_0
    move-exception v1

    .line 1231
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "sendAck"

    invoke-direct {p0, v0, v2, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAck: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 1234
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/wfo/ril/RILRequest;->release()V

    .line 1235
    return-void
.end method


# virtual methods
.method protected convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 686
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getWfcConfig(ILandroid/os/Message;)V
    .locals 5
    .param p1, "setting"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 869
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    move-result v0

    .line 870
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 871
    const/16 v1, 0x88c

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 875
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 880
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isAidl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    const/4 v4, 0x1

    invoke-interface {v2, v3, p1, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getWfcConfig(III)V

    goto :goto_0

    .line 883
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getWfcConfig(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_0
    goto :goto_1

    .line 885
    :catch_0
    move-exception v2

    .line 886
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getWfcConfig"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 889
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public handleRadioProxyForRadioAvailable()V
    .locals 4

    .line 668
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRadioProxyForRadioAvailable mRadioProxyCookie = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 670
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 671
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->resetProxyAndRequestList()V

    .line 672
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRilHandler:Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 674
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 673
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    .line 672
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 677
    :cond_0
    return-void
.end method

.method public notifyEPDGScreenState(ILandroid/os/Message;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1047
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    move-result v0

    .line 1048
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 1049
    const/16 v1, 0x883

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 1053
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1057
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isAidl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1058
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    const/4 v4, 0x1

    invoke-interface {v2, v3, p1, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->notifyEPDGScreenState(III)V

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->notifyEPDGScreenState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :goto_0
    goto :goto_1

    .line 1062
    :catch_0
    move-exception v2

    .line 1063
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "notifyEPDGScreenState"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1066
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method processIndication(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 1075
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1076
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->sendAck()V

    .line 1077
    const-string v0, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1080
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processIndication error type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 1082
    :goto_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 4
    .param p1, "serial"    # I

    .line 1086
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1087
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/ril/RILRequest;

    .line 1088
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    if-nez v1, :cond_0

    .line 1090
    const-string v0, "MwiRIL"

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

    .line 1094
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Ack < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1099
    :goto_0
    return-void

    .line 1088
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/wfo/ril/RILRequest;
    .locals 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 1109
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 1110
    .local v0, "serial":I
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 1111
    .local v1, "error":I
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    .line 1113
    .local v2, "type":I
    const/4 v3, 0x0

    .line 1115
    .local v3, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1116
    iget-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1117
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/wfo/ril/RILRequest;

    move-object v3, v5

    .line 1118
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    if-nez v3, :cond_0

    .line 1120
    const-string v4, "MwiRIL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected solicited ack response! sn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1122
    :cond_0
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 1124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Ack < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1127
    :goto_0
    return-object v3

    .line 1118
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1130
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->findAndRemoveRequestFromList(I)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v3

    .line 1131
    if-nez v3, :cond_2

    .line 1132
    const-string v4, "MwiRIL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processResponse: Unexpected response! serial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v4, 0x0

    return-object v4

    .line 1137
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 1138
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->sendAck()V

    .line 1140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response received for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    .line 1141
    invoke-static {v5}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Sending ack to ril.cpp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1140
    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1144
    :cond_3
    return-object v3
.end method

.method processResponseDone(Lcom/mediatek/wfo/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 1166
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const-string v1, "< "

    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    .line 1169
    invoke-static {v1, p3}, Lcom/mediatek/wfo/ril/MwiRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1173
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1176
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/mediatek/wfo/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1178
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    iget v4, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v5, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 1180
    if-eqz p1, :cond_2

    .line 1181
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-nez v0, :cond_1

    .line 1182
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 1184
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/wfo/ril/RILRequest;->release()V

    .line 1186
    :cond_2
    return-void
.end method

.method public processResponseDoneEx(Lcom/mediatek/wfo/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 3
    .param p1, "rr"    # Lcom/mediatek/wfo/ril/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 1190
    if-eqz p1, :cond_2

    .line 1191
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    const-string v1, "< "

    if-eqz v0, :cond_0

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1194
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/mediatek/wfo/ril/RILRequest;->onError(ILjava/lang/Object;)V

    goto :goto_0

    .line 1196
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    .line 1197
    invoke-static {v1, p3}, Lcom/mediatek/wfo/ril/MwiRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/hardware/radio/RadioResponseInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1196
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1202
    :goto_0
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->type:I

    if-nez v0, :cond_1

    .line 1203
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->decrementWakeLock(Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 1205
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/wfo/ril/RILRequest;->release()V

    goto :goto_1

    .line 1207
    :cond_2
    const-string v0, "processResponseDoneEx: RILRequest null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 1209
    :goto_1
    return-void
.end method

.method public processResponseEx(Landroid/hardware/radio/RadioResponseInfo;)Lcom/mediatek/wfo/ril/RILRequest;
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 1149
    iget v0, p1, Landroid/hardware/radio/RadioResponseInfo;->serial:I

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->findAndRemoveRequestFromList(I)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v0

    .line 1150
    .local v0, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    if-nez v0, :cond_0

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processResponse: Unexpected response! serial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLoge(Ljava/lang/String;)V

    .line 1154
    :cond_0
    return-object v0
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1509
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

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

    .line 1508
    const-string v1, "MwiRIL"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    return-void
.end method

.method riljLoge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1514
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

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

    .line 1513
    const-string v1, "MwiRIL"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return-void
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1519
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

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

    .line 1518
    const-string v1, "MwiRIL"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1520
    return-void
.end method

.method riljLogv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1524
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

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

    .line 1523
    const-string v1, "MwiRIL"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void
.end method

.method public setEmergencyAddressId(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 964
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    move-result v0

    .line 965
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 966
    const/16 v1, 0x849

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 970
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 974
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isAidl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 975
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    const/4 v4, 0x1

    invoke-interface {v2, v3, p1, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setEmergencyAddressId(ILjava/lang/String;I)V

    goto :goto_0

    .line 977
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setEmergencyAddressId(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :goto_0
    goto :goto_1

    .line 979
    :catch_0
    move-exception v2

    .line 980
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setEmergencyAddressId"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 983
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setLocationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 20
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "broadcastFlag"    # Ljava/lang/String;
    .param p3, "latitude"    # Ljava/lang/String;
    .param p4, "longitude"    # Ljava/lang/String;
    .param p5, "accuracy"    # Ljava/lang/String;
    .param p6, "method"    # Ljava/lang/String;
    .param p7, "city"    # Ljava/lang/String;
    .param p8, "state"    # Ljava/lang/String;
    .param p9, "zip"    # Ljava/lang/String;
    .param p10, "countryCode"    # Ljava/lang/String;
    .param p11, "ueWlanMac"    # Ljava/lang/String;
    .param p12, "confidence"    # Ljava/lang/String;
    .param p13, "altitude"    # Ljava/lang/String;
    .param p14, "majorAxisAccuracy"    # Ljava/lang/String;
    .param p15, "minorAxisAccuracy"    # Ljava/lang/String;
    .param p16, "vericalAxisAccuracy"    # Ljava/lang/String;
    .param p17, "response"    # Landroid/os/Message;

    .line 902
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v15, p17

    invoke-direct {v1, v15}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    move-result v16

    .line 903
    .local v16, "result":Z
    if-eqz v16, :cond_1

    .line 904
    const/16 v0, 0x848

    iget-object v14, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v15, v14}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v14

    .line 908
    .local v14, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "> "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v14, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v15}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " accountId:"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v15, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " broadcastFlag:"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " accuracy:"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " method:"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 917
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isAidl()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v0, :cond_0

    .line 918
    const/16 v0, 0x10

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    .line 919
    .local v0, "list":[Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v15

    .line 920
    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x1

    aput-object v15, v0, v2

    .line 921
    const/4 v15, 0x2

    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v15

    .line 922
    const/4 v15, 0x3

    invoke-virtual {v1, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v15

    .line 923
    const/4 v15, 0x4

    invoke-virtual {v1, v5}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v15

    .line 924
    const/4 v15, 0x5

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v15

    .line 925
    const/4 v15, 0x6

    invoke-virtual {v1, v7}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v15

    .line 926
    const/4 v15, 0x7

    invoke-virtual {v1, v8}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v15

    .line 927
    const/16 v15, 0x8

    invoke-virtual {v1, v9}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v15

    .line 928
    const/16 v15, 0x9

    invoke-virtual {v1, v10}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v15

    .line 929
    const/16 v15, 0xa

    invoke-virtual {v1, v11}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v15

    .line 930
    const/16 v15, 0xb

    invoke-virtual {v1, v12}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v15

    .line 931
    const/16 v15, 0xc

    invoke-virtual {v1, v13}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v15

    .line 932
    const/16 v15, 0xd

    move-object/from16 v2, p14

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v0, v15

    .line 933
    move-object/from16 v15, p15

    invoke-virtual {v1, v15}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v18, 0xe

    aput-object v19, v0, v18

    .line 934
    const/16 v18, 0xf

    move-object/from16 v15, p16

    invoke-virtual {v1, v15}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v0, v18

    .line 935
    iget-object v15, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    iget v2, v14, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v18, v14

    const/4 v14, 0x1

    .end local v14    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .local v18, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :try_start_2
    invoke-interface {v15, v2, v0, v14}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setLocationInfo(I[Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 936
    .end local v0    # "list":[Ljava/lang/String;
    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 956
    :catch_0
    move-exception v0

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v2, v18

    goto/16 :goto_3

    .end local v18    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .restart local v14    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :catch_1
    move-exception v0

    move-object/from16 v15, p15

    move-object v2, v14

    move-object/from16 v14, p14

    .end local v14    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .restart local v18    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    goto/16 :goto_3

    .line 937
    .end local v18    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .restart local v14    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_0
    move-object/from16 v18, v14

    .end local v14    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .restart local v18    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    invoke-virtual {v1, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    invoke-virtual {v1, v5}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    invoke-virtual {v1, v7}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-virtual {v1, v8}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    invoke-virtual {v1, v9}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    invoke-virtual {v1, v10}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    invoke-virtual {v1, v11}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    invoke-virtual {v1, v12}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    invoke-virtual {v1, v13}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    .line 951
    move-object/from16 v14, p14

    :try_start_4
    invoke-virtual {v1, v14}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 952
    move-object/from16 v15, p15

    move-object/from16 v2, p16

    :try_start_5
    invoke-virtual {v1, v15}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    iget-object v3, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v2, v18

    .end local v18    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .local v2, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :try_start_6
    iget v4, v2, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v3, v4, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setLocationInfo(ILjava/util/ArrayList;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    .line 958
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    goto :goto_4

    .line 956
    :catch_2
    move-exception v0

    goto :goto_3

    .end local v2    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .restart local v18    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    move-object/from16 v14, p14

    :goto_1
    move-object/from16 v15, p15

    :goto_2
    move-object/from16 v2, v18

    .end local v18    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .restart local v2    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    goto :goto_3

    .end local v2    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .restart local v14    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :catch_6
    move-exception v0

    move-object/from16 v15, p15

    move-object v2, v14

    move-object/from16 v14, p14

    .line 957
    .end local v14    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :goto_3
    const-string v3, "setLocationInfo"

    invoke-direct {v1, v2, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 903
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_1
    move-object/from16 v15, p15

    .line 960
    :goto_4
    return-void
.end method

.method public setNattKeepAliveStatus(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V
    .locals 16
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "srcIp"    # Ljava/lang/String;
    .param p4, "srcPort"    # I
    .param p5, "dstIp"    # Ljava/lang/String;
    .param p6, "dstPort"    # I
    .param p7, "response"    # Landroid/os/Message;

    .line 989
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-direct {v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    move-result v3

    .line 990
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 991
    const/16 v0, 0x853

    iget-object v4, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v2, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v4

    .line 995
    .local v4, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v4, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ifName:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " enable:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p2

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1000
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v5, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    iget v6, v4, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    const/4 v13, 0x1

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-interface/range {v5 .. v13}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)V

    goto :goto_0

    .line 1004
    :cond_0
    iget-object v5, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v6, v4, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-interface/range {v5 .. v12}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :goto_0
    goto :goto_1

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "setNattKeepAliveStatus"

    invoke-direct {v1, v4, v5, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 990
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_1
    move-object/from16 v14, p1

    move/from16 v15, p2

    .line 1011
    :goto_1
    return-void
.end method

.method public setWfcConfig(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "setting"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 841
    invoke-direct {p0, p4}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    move-result v0

    .line 842
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 843
    const/16 v1, 0x88b

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 847
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ifName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 854
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isAidl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    iget v4, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    const/4 v8, 0x1

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setWfcConfig(IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 858
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v2, v3, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setWfcConfig(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_0
    goto :goto_1

    .line 861
    :catch_0
    move-exception v2

    .line 862
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWfcConfig"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 865
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setWfcConfig_WifiUeMac(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 893
    sget-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_UEMAC:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v0}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mediatek/wfo/ril/MwiRIL;->setWfcConfig(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 894
    return-void
.end method

.method public setWifiAssociated(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "associated"    # Z
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "apMac"    # Ljava/lang/String;
    .param p5, "mtuSize"    # I
    .param p6, "ueMac"    # Ljava/lang/String;
    .param p7, "wifiConnState"    # I
    .param p8, "response"    # Landroid/os/Message;

    .line 729
    invoke-direct {p0, p8}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    move-result v0

    .line 730
    .local v0, "result":Z
    if-eqz v0, :cond_3

    .line 731
    const/16 v1, 0x845

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p8, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 735
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ifName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " associated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mtu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wifiConnState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 741
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isAidl()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 742
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    .line 743
    .local v2, "list":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 744
    if-eqz p2, :cond_0

    move v3, v4

    .line 745
    .local v3, "assoc":I
    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 746
    const/4 v5, 0x2

    invoke-virtual {p0, p3}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 747
    const/4 v5, 0x3

    invoke-virtual {p0, p4}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 748
    const/4 v5, 0x4

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 749
    const/4 v5, 0x5

    invoke-virtual {p0, p6}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 750
    const/4 v5, 0x6

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 751
    iget-object v5, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    iget v6, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v5, v6, v2, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setWifiAssociated(I[Ljava/lang/String;I)V

    .line 752
    .end local v2    # "list":[Ljava/lang/String;
    .end local v3    # "assoc":I
    goto :goto_0

    .line 753
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    if-eqz p2, :cond_2

    move v3, v4

    .line 756
    .restart local v3    # "assoc":I
    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    invoke-virtual {p0, p3}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-virtual {p0, p4}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-virtual {p0, p6}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v5, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v4, v5, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setWifiAssociated(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "assoc":I
    :goto_0
    goto :goto_1

    .line 764
    :catch_0
    move-exception v2

    .line 765
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWifiAssociatedWithMtu"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 768
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method

.method public setWifiEnabled(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 9
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "isWifiEnabled"    # I
    .param p3, "isFlightModeOn"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 701
    invoke-direct {p0, p4}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    move-result v0

    .line 702
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 703
    const/16 v1, 0x844

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 707
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ifName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isWifiEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isFlightModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 713
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isAidl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    iget v4, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    const/4 v8, 0x1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setWifiEnabled(ILjava/lang/String;III)V

    goto :goto_0

    .line 717
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v2, v3, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setWifiEnabled(ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    goto :goto_1

    .line 720
    :catch_0
    move-exception v2

    .line 721
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWifiEnabled"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 724
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setWifiIpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 16
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "ipv4Addr"    # Ljava/lang/String;
    .param p3, "ipv6Addr"    # Ljava/lang/String;
    .param p4, "ipv4PrefixLen"    # I
    .param p5, "ipv6PrefixLen"    # I
    .param p6, "ipv4Gateway"    # Ljava/lang/String;
    .param p7, "ipv6Gateway"    # Ljava/lang/String;
    .param p8, "dnsCount"    # I
    .param p9, "dnsAddresses"    # Ljava/lang/String;
    .param p10, "response"    # Landroid/os/Message;

    .line 798
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-direct {v1, v5}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    move-result v6

    .line 799
    .local v6, "result":Z
    if-eqz v6, :cond_1

    .line 800
    const/16 v0, 0x847

    iget-object v7, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v5, v7}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v7

    .line 804
    .local v7, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "> "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v7, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " ifName:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " ipv4PrefixLen: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, p4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " ipv6PrefixLen: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " ipv4Gateway: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " ipv6Gateway: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " dnsCount: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, p8

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " dnsAddresses: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 816
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 818
    move-object/from16 v12, p2

    :try_start_1
    invoke-virtual {v1, v12}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 819
    move-object/from16 v13, p3

    :try_start_2
    invoke-virtual {v1, v13}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-virtual {v1, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isAidl()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 827
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    .line 828
    .local v14, "data":[Ljava/lang/String;
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    move-object v14, v15

    .line 829
    iget-object v15, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    iget v2, v7, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    invoke-interface {v15, v2, v14, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setWifiIpAddress(I[Ljava/lang/String;I)V

    .line 830
    .end local v14    # "data":[Ljava/lang/String;
    goto :goto_0

    .line 831
    :cond_0
    iget-object v2, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v7, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v2, v3, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setWifiIpAddress(ILjava/util/ArrayList;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 835
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    goto :goto_3

    .line 833
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v12, p2

    :goto_1
    move-object/from16 v13, p3

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v2, "setWifiIpAddressWithDns"

    invoke-direct {v1, v7, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 799
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_1
    move-object/from16 v8, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p8

    .line 837
    :goto_3
    return-void
.end method

.method public setWifiPingResult(IIILandroid/os/Message;)V
    .locals 9
    .param p1, "rat"    # I
    .param p2, "latency"    # I
    .param p3, "pktloss"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 1015
    invoke-direct {p0, p4}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    move-result v0

    .line 1016
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 1017
    const/16 v1, 0x854

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 1021
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " latency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pktloss = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1027
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isAidl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1028
    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    iget v4, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    const/4 v8, 0x1

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setWifiPingResult(IIIII)V

    goto :goto_0

    .line 1031
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v2, v3, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setWifiPingResult(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :goto_0
    goto :goto_1

    .line 1034
    :catch_0
    move-exception v2

    .line 1035
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWifiPingResult"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1038
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setWifiSignalLevel(IILandroid/os/Message;)V
    .locals 5
    .param p1, "rssi"    # I
    .param p2, "snr"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 772
    invoke-direct {p0, p3}, Lcom/mediatek/wfo/ril/MwiRIL;->getRadioProxy(Landroid/os/Message;)Z

    move-result v0

    .line 773
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 774
    const/16 v1, 0x846

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 778
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " snr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 783
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/ril/MwiRIL;->isAidl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyEx:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    const/4 v4, 0x1

    invoke-interface {v2, v3, p1, p2, v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setWifiSignalLevel(IIII)V

    goto :goto_0

    .line 786
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxy:Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setWifiSignalLevel(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    goto :goto_1

    .line 788
    :catch_0
    move-exception v2

    .line 789
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWifiSignalLevel"

    invoke-direct {p0, v1, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyExceptionForRR(Lcom/mediatek/wfo/ril/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 792
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/wfo/ril/MwiRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1529
    return-void
.end method

.method unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/wfo/ril/MwiRIL;->responseToString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1533
    return-void
.end method

.method unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/wfo/ril/MwiRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 1537
    return-void
.end method

.method unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/wfo/ril/MwiRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLogv(Ljava/lang/String;)V

    .line 1541
    return-void
.end method
