.class public Lcom/mediatek/wfo/impl/WifiPdnHandler;
.super Landroid/os/Handler;
.source "WifiPdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;,
        Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x3e8

.field private static final DEFAULT_MTU_SIZE:I = 0x5dc

.field private static final EVENT_GET_WIFI_CONN_STATE_SUPPORT_INFO:I = 0x3f9

.field public static final EVENT_HANDLE_AIRPLANE_MODE:I = 0x480

.field private static final EVENT_INITIALIZE:I = 0x3f7

.field private static final EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0x3f8

.field public static final EVENT_ON_NATT_KEEP_ALIVE_CHANGED:I = 0x44f

.field public static final EVENT_ON_WIFI_LOCK:I = 0x481

.field public static final EVENT_ON_WIFI_MONITORING_THRESHOLD_CHANGED:I = 0x44d

.field public static final EVENT_ON_WIFI_PDN_ACTIVATE:I = 0x44e

.field public static final EVENT_ON_WIFI_PING_REQUEST:I = 0x47e

.field private static final EVENT_RADIO_AVAILABLE:I = 0x3ed

.field private static final EVENT_RETRY_CHECK_IF_START_WIFI_SCAN:I = 0x3f2

.field private static final EVENT_RETRY_INIT:I = 0x3f0

.field private static final EVENT_RETRY_UPDATE_LAST_RSSI:I = 0x3f3

.field private static final EVENT_RETRY_UPDATE_WIFI_CONNTECTED_INFO:I = 0x3f1

.field public static final EVENT_SET_NATT_STATUS:I = 0x3ef

.field private static final EVENT_SET_WIFI_ASSOC:I = 0x3eb

.field private static final EVENT_SET_WIFI_ENABLED:I = 0x3ea

.field private static final EVENT_SET_WIFI_IP_ADDR:I = 0x3ec

.field public static final EVENT_SET_WIFI_PING_RESULT:I = 0x47f

.field private static final EVENT_SET_WIFI_SIGNAL_STRENGTH:I = 0x3e9

.field private static final EVENT_SET_WIFI_UE_MAC:I = 0x3f6

.field private static final EVENT_WIFI_NETWORK_STATE_CHANGE:I = 0x3e8

.field private static final EVENT_WIFI_SCAN:I = 0x3ee

.field private static final EVENT_WIFI_SCAN_AVAILABLE:I = 0x3f4

.field private static final EVENT_WIFI_STATE_CHANGE:I = 0x3f5

.field private static final EWIFIEN_AP_MODE_STATE:I = 0x8

.field private static final EWIFIEN_CAUSE:I = 0x1

.field private static final EWIFIEN_NEED_SEND_AP_MODE:I = 0x10

.field private static final EWIFIEN_NEED_SEND_WIFI_ENABLED:I = 0x4

.field private static final EWIFIEN_WIFI_ENABLED_STATE:I = 0x2

.field private static final EXTRA_WFC_STATUS_KEY:Ljava/lang/String; = "wfc_status"

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final MTK_KEY_WOS_SUPPORT_WFC_IN_FLIGHTMODE:Ljava/lang/String; = "wos_flight_mode_support_bool"

.field private static final NEED_DEFER:I = 0x1

.field private static final NONE_SSID:Ljava/lang/String; = "<unknown ssid>"

.field private static final NO_NEED_DEFER:I = 0x0

.field private static final PING_PASS_LATENCY:I = 0x32

.field private static final PING_PASS_LOSS_RATE:I = 0x0

.field private static final PROPERTY_MIMS_SUPPORT:Ljava/lang/String; = "persist.vendor.mims_support"

.field private static final PROPERTY_WFC_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.wfc.enable"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final RESPONSE_GET_WIFI_CONN_STATE_SUPPORT_INFO:I = 0x4b7

.field private static final RESPONSE_SET_NATT_KEEP_ALIVE_STATUS:I = 0x4b4

.field private static final RESPONSE_SET_WIFI_ASSOC:I = 0x4b2

.field private static final RESPONSE_SET_WIFI_ENABLED:I = 0x4b0

.field private static final RESPONSE_SET_WIFI_IP_ADDR:I = 0x4b3

.field private static final RESPONSE_SET_WIFI_PING_RESULT:I = 0x4b5

.field private static final RESPONSE_SET_WIFI_SIGNAL_LEVEL:I = 0x4b1

.field private static final RESPONSE_SET_WIFI_UE_MAC:I = 0x4b6

.field private static final RETRY_TIMEOUT:I = 0x3e8

.field public static final SNR_UNKNOWN:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "WifiPdnHandler"

.field private static final TAG_AVAILABLE:Ljava/lang/String; = "onAvailable"

.field private static final TAG_CAPABILITIES:Ljava/lang/String; = "onCapabilitiesChanged"

.field private static final TAG_LOST:Ljava/lang/String; = "onLost"

.field private static final TAG_PROPERTIES:Ljava/lang/String; = "onLinkPropertiesChanged"

.field private static final TELDBG:Z

.field private static final USR_BUILD:Z

.field private static final WFC_NOTIFY_GO:I = 0x2

.field private static final WFC_REQUEST_PARTIAL_SCAN:Ljava/lang/String; = "com.mediatek.intent.action.WFC_REQUEST_PARTIAL_SCAN"

.field private static final WFC_STATUS_CHANGED:Ljava/lang/String; = "com.mediatek.intent.action.WFC_STATUS_CHANGED"

.field private static final WIFI_IF_NAME:Ljava/lang/String; = "wlan0"

.field private static final WIFI_SCAN_DELAY:I = 0xbb8

.field private static final WIFI_STATE_UI_DISABLING:I = 0x26ac

.field private static mWifiUeMac:Ljava/lang/String;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDeferredNotificationToWifi:Z

.field private mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mHasWiFiDisabledPending:Z

.field private mIfName:Ljava/lang/String;

.field private mIsAirplaneModeChange:Z

.field private mIsAirplaneModeOn:Z

.field private mIsMBBSupport:Z

.field private mIsWifiConnected:Z

.field private mIsWifiEnabled:Z

.field private mLastRssi:I

.field private mLock:Ljava/lang/Object;

.field private mModemReqWifiLock:[Z

.field private mMtu:I

.field private mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

.field private mNetwork:Landroid/net/Network;

.field private mOldIfName:Ljava/lang/String;

.field private mOldWifiConnectedFromNetworkInfo:Z

.field private mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

.field private mPendingMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioState:I

.field private mRatType:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryCount:I

.field private mRssiChange:Z

.field private mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

.field private mSimCount:I

.field private mSsid:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

.field private mWifiApMac:Ljava/lang/String;

.field private mWifiConnState:I

.field private mWifiConnStateSupportInfo:I

.field private mWifiIpv4Address:Ljava/lang/String;

.field private mWifiIpv4Gateway:Ljava/lang/String;

.field private mWifiIpv4PrefixLen:I

.field private mWifiIpv6Address:Ljava/lang/String;

.field private mWifiIpv6Gateway:Ljava/lang/String;

.field private mWifiIpv6PrefixLen:I

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiLockCount:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPdnExisted:[Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAirplaneModeOn(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMBBSupport(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastRssi(Lcom/mediatek/wfo/impl/WifiPdnHandler;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOldWifiConnectedFromNetworkInfo(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldWifiConnectedFromNetworkInfo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnState(Lcom/mediatek/wfo/impl/WifiPdnHandler;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastRssi(Lcom/mediatek/wfo/impl/WifiPdnHandler;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOldWifiConnectedFromNetworkInfo(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldWifiConnectedFromNetworkInfo:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRssiChange(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mignoreVpnCallback(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->ignoreVpnCallback(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misMBBSupported(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isMBBSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPrimaryWifi(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isPrimaryWifi(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetWifiEnabled(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 124
    const-string v0, "02:00:00:00:00:00"

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    .line 228
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 229
    const-string v3, "userdebug"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->USR_BUILD:Z

    .line 230
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simCount"    # I
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 720
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 121
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 122
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldWifiConnectedFromNetworkInfo:Z

    .line 123
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 129
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    .line 130
    iput v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 131
    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 132
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 133
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldIfName:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 137
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    .line 138
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 139
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 140
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 141
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 150
    sget-object v1, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    .line 151
    sget-object v1, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->WFC_FEATURE_UNKNOWN:Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    .line 152
    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnStateSupportInfo:I

    .line 155
    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    .line 247
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    .line 249
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mNetwork:Landroid/net/Network;

    .line 251
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    .line 255
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    .line 662
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 721
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    .line 722
    iput p2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    .line 723
    iput-object p4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 725
    const/16 v0, 0x3f7

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 726
    .local v0, "initMsg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 728
    const/16 v1, 0x3f9

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 729
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 730
    return-void
.end method

.method private allowWfcInAirplaneMode()V
    .locals 6

    .line 1383
    const/4 v0, 0x0

    .line 1384
    .local v0, "wfcInApMode":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isAirPlaneMode()Z

    move-result v1

    .line 1385
    .local v1, "isAirPlaneModeOn":Z
    const-string v2, "persist.vendor.mims_support"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "wos_flight_mode_support_bool"

    if-gt v2, v3, :cond_1

    .line 1386
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMainCapabilityPhoneId()I

    move-result v2

    .line 1387
    .local v2, "phoneId":I
    invoke-direct {p0, v4, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getBooleanCarrierConfig(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1390
    if-nez v0, :cond_0

    .line 1391
    invoke-direct {p0, v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWfcCapabilityByPhoneId(IZ)V

    .line 1393
    .end local v2    # "phoneId":I
    :cond_0
    goto :goto_1

    .line 1394
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v2, v5, :cond_3

    .line 1395
    invoke-direct {p0, v4, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getBooleanCarrierConfig(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1397
    if-nez v0, :cond_2

    .line 1398
    invoke-direct {p0, v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWfcCapabilityByPhoneId(IZ)V

    .line 1394
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1402
    .end local v2    # "i":I
    :cond_3
    :goto_1
    return-void
.end method

.method private broadcastWfcStatusIntent(I)V
    .locals 2
    .param p1, "wfcStatus"    # I

    .line 2071
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    const/16 v1, 0x839

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2072
    return-void
.end method

.method private checkIfstartWifiScan(Z)V
    .locals 4
    .param p1, "scanImmediately"    # Z

    .line 1591
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    .line 1593
    .local v0, "wifiPdnExisted":Z
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    const/16 v2, 0x3ee

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 1595
    if-eqz p1, :cond_1

    .line 1596
    const-string v1, "call WifiManager.startScan()"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1597
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 1598
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 1599
    return-void

    .line 1601
    :cond_0
    const-string v1, "WifiPdnHandler"

    const-string v2, "checkIfstartWifiScan(): WifiManager null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    const/16 v1, 0x3f2

    .line 1603
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1602
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1604
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1605
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    monitor-exit v3

    .line 1607
    return-void

    .line 1606
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1611
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1612
    const-string v1, "start 3s delay to trigger wifi scan"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1613
    nop

    .line 1614
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 1613
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1617
    :cond_2
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->removeMessages(I)V

    .line 1619
    :cond_3
    :goto_0
    return-void
.end method

.method private checkInvalidSimIdx(ILjava/lang/String;)Z
    .locals 1
    .param p1, "simIdx"    # I
    .param p2, "dbgMsg"    # Ljava/lang/String;

    .line 1855
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1859
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1856
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1857
    const/4 v0, 0x1

    return v0
.end method

.method private checkRadioPowerState()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 509
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getRadioPowerState()I

    move-result v0

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    goto :goto_0

    .line 515
    :cond_1
    const-string v0, "mTelephonyManager is null, keep the original RadioState"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 518
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRadioPowerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method private generateWifiEnableCause(ZZZZZ)I
    .locals 3
    .param p1, "needAPMode"    # Z
    .param p2, "apMode"    # Z
    .param p3, "needWifiEnabled"    # Z
    .param p4, "wifiEnabled"    # Z
    .param p5, "bCause"    # Z

    .line 1317
    const/4 v0, 0x0

    .line 1319
    .local v0, "cause":I
    if-eqz p1, :cond_0

    .line 1320
    or-int/lit8 v0, v0, 0x10

    .line 1322
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    or-int/2addr v0, v2

    .line 1324
    if-eqz p3, :cond_2

    .line 1325
    or-int/lit8 v0, v0, 0x4

    .line 1327
    :cond_2
    if-eqz p4, :cond_3

    const/4 v1, 0x2

    :cond_3
    or-int/2addr v0, v1

    .line 1329
    or-int/2addr v0, p5

    .line 1331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateWifiEnableCause(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1332
    return v0
.end method

.method private getAirplaneModeFromSettings()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 491
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 493
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 494
    .local v0, "value":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAirplaneModeFromSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    if-ne v2, v1, :cond_2

    .line 497
    :cond_1
    const-string v1, "Disable airplane mode after get from setting if radio is on"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    const/4 v0, 0x0

    .line 500
    :cond_2
    return v0

    .line 501
    .end local v0    # "value":Z
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "WifiPdnHandler"

    const-string v2, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    throw v0
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;IZ)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "defaultValue"    # Z

    .line 1424
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1425
    const-string v0, "WifiPdnHandler"

    const-string v1, "getBooleanCarrierConfig fail, mContext = null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1429
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getSubId(I)I

    move-result v1

    .line 1430
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBooleanCarrierConfig: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1431
    const/4 v2, 0x0

    .line 1432
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    .line 1433
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1435
    :cond_1
    const/4 v3, 0x1

    .line 1436
    .local v3, "ret":Z
    if-eqz v2, :cond_2

    .line 1437
    invoke-virtual {v2, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0

    .line 1440
    :cond_2
    const-string v4, "getBooleanCarrierConfig: get from default config"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1441
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1443
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBooleanCarrierConfig sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1444
    return v3
.end method

.method private getMainCapabilityPhoneId()I
    .locals 3

    .line 1927
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 1928
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1929
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCapabilityPhoneId error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiPdnHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    const/4 v0, -0x1

    .line 1932
    :cond_1
    return v0
.end method

.method private getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 3

    .line 1936
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1938
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1940
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1

    .line 1942
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getSubId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 1459
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1460
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 1461
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1462
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 1464
    :cond_0
    return v1
.end method

.method public static getUeWlanMacAddr()Ljava/lang/String;
    .locals 1

    .line 1947
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    return-object v0
.end method

.method private getWifiConnStateSupportInfo()V
    .locals 3

    .line 429
    const-string v0, "getWifiConnStateSupportInfo"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 430
    const/16 v0, 0x4b7

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 431
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_CONN_STATE:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->getWfcConfig(ILandroid/os/Message;)V

    .line 433
    return-void
.end method

.method private handleAirplaneMode()V
    .locals 4

    .line 473
    const/4 v0, 0x0

    .line 475
    .local v0, "isAirplaneModeOn":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getAirplaneModeFromSettings()Z

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 478
    goto :goto_0

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiPdnHandler"

    const-string v3, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAirplaneMode mIsAirplaneModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 482
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eq v1, v0, :cond_0

    .line 483
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 486
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 487
    return-void
.end method

.method private handleResponse(ILandroid/os/AsyncResult;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "result"    # Landroid/os/AsyncResult;

    .line 523
    return-void
.end method

.method private handleResponseWifiConnStateSupportInfo(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 537
    const-string v0, "WifiPdnHandler"

    if-nez p1, :cond_0

    .line 538
    const-string v1, "ResponseWifiConnStateSupportInfo no ar"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void

    .line 542
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResponseWifiConnStateSupportInfo exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 546
    const/16 v0, 0x3f9

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 547
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    goto :goto_1

    .line 550
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 551
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 552
    .local v0, "result":I
    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnStateSupportInfo:I

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResponseWifiConnStateSupportInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnStateSupportInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 554
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnStateSupportInfo:I

    sget-object v2, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->WFC_FEATURE_SUPPORTED:Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    .line 555
    invoke-virtual {v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 556
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setupCallbacksForWifiStatusEx()V

    .line 558
    .end local v0    # "result":I
    :cond_2
    goto :goto_0

    .line 559
    :cond_3
    const-string v1, "ResponseWifiConnStateSupportInfo no result"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRetryCount:I

    .line 564
    :cond_4
    :goto_1
    return-void
.end method

.method private handleRetry(ILandroid/os/AsyncResult;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "result"    # Landroid/os/AsyncResult;

    .line 526
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRetry already exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPdnHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void

    .line 531
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 532
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 534
    :cond_1
    return-void
.end method

.method private handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V
    .locals 5
    .param p1, "source"    # Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;
    .param p2, "state"    # I

    .line 967
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$4;->$SwitchMap$com$mediatek$wfo$impl$WifiPdnHandler$WifiLockSource:[I

    invoke-virtual {p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Warning: mWifiLockCount: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1007
    :pswitch_0
    const/16 v0, 0x26ac

    if-ne p2, v0, :cond_1

    .line 1008
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    if-nez v0, :cond_8

    .line 1009
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    goto/16 :goto_0

    .line 1012
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    goto/16 :goto_0

    .line 1015
    :cond_1
    if-ne p2, v4, :cond_3

    .line 1017
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    if-eqz v0, :cond_2

    .line 1018
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    .line 1019
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-eqz v0, :cond_8

    .line 1020
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 1021
    const-string v0, "Wi-Fi fwk automaticlly disable defer Wi-Fi off process due to timeout"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_8

    .line 1023
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1025
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 1026
    if-lez v0, :cond_8

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1031
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 1033
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-nez v0, :cond_8

    .line 1034
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1035
    invoke-direct {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 1036
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_4

    .line 1037
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1038
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 1041
    :cond_4
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    goto :goto_0

    .line 970
    :pswitch_1
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-nez v0, :cond_6

    .line 971
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 972
    invoke-direct {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 973
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_5

    .line 974
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 975
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 978
    :cond_5
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 982
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    if-eqz v0, :cond_7

    .line 983
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 984
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    .line 985
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 989
    :cond_7
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-eqz v0, :cond_8

    .line 990
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-nez v0, :cond_8

    .line 991
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 992
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 993
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_8

    .line 994
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 996
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 997
    if-lez v0, :cond_8

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1050
    :cond_8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new handleWifiDefferOff(): WifiLockSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHasWiFiDisabledPending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isWifiDeferOffNeeded(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1053
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDeferredNotificationToWifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1050
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1057
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleWifiStateChange(I)V
    .locals 3
    .param p1, "wifiState"    # I

    .line 436
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 437
    const-string v0, "Unexpected error, mWifiManager is null!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 438
    const/16 v0, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 439
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    monitor-exit v2

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 445
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWifiStateChange wifiState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 448
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isAirPlaneMode()Z

    move-result v0

    .line 449
    .local v0, "isAirplaneModeOn":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eq v2, v0, :cond_1

    .line 450
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 451
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 452
    const-string v2, "handleWifiStateChange change due to airplane mode change"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 458
    :cond_1
    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-direct {p0, v2, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V

    .line 459
    const/16 v2, 0x26ac

    if-ne p1, v2, :cond_2

    .line 460
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 461
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    goto :goto_0

    .line 463
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 465
    .local v1, "isWifiEnabled":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    if-eq v1, v2, :cond_3

    .line 466
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 467
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 470
    .end local v1    # "isWifiEnabled":Z
    :cond_3
    :goto_0
    return-void
.end method

.method private ignoreVpnCallback(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z
    .locals 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "tagType"    # Ljava/lang/String;

    .line 2090
    if-eqz p1, :cond_0

    .line 2092
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2093
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ignore VPN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 2095
    return v0

    .line 2098
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initWifiManager()V
    .locals 4

    .line 810
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 811
    return-void

    .line 814
    :cond_0
    const-string v0, "WifiPdnHandler"

    const-string v1, "initWifiManager."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 816
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 817
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 818
    .local v0, "isWifiEnabled":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    if-eq v0, v2, :cond_1

    .line 819
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 820
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 822
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v3, "WifiOffloadService-Wifi Lock"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 823
    if-eqz v2, :cond_2

    .line 824
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 827
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isMBBSupported()Z

    .line 828
    .end local v0    # "isWifiEnabled":Z
    goto :goto_0

    .line 829
    :cond_3
    const-string v0, "WifiManager null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 830
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 832
    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 833
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 834
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    monitor-exit v1

    .line 837
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 835
    .restart local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initialize()V
    .locals 3

    .line 733
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initWifiManager()V

    .line 735
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 737
    new-instance v1, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-direct {v1, v0}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    .line 738
    new-instance v0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, v2}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    .line 741
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    .line 742
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    .line 744
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRatType:[I

    .line 746
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->initialize(I)V

    .line 748
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize(): mIsAirplaneModeOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 754
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->registerForBroadcast()V

    .line 755
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->registerIndication()V

    .line 757
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setupCallbacksForWifiStatus()V

    .line 760
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 765
    return-void
.end method

.method private isAirPlaneMode()Z
    .locals 3

    .line 1448
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1449
    const-string v0, "WifiPdnHandler"

    const-string v2, "isAirPlaneMode: no context!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    return v1

    .line 1452
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 1454
    .local v0, "isAirPlaneMode":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAirPlaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1455
    return v0
.end method

.method private isEccInProgress()Z
    .locals 3

    .line 2052
    const/4 v0, 0x0

    .line 2053
    .local v0, "isInEcc":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 2054
    .local v1, "tm":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 2055
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v0

    .line 2057
    :cond_0
    return v0
.end method

.method private isIfNameChanged()Z
    .locals 2

    .line 1480
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldIfName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1481
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldIfName:Ljava/lang/String;

    .line 1482
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1486
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1483
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMBBSupported()Z
    .locals 2

    .line 2115
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 2116
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isMakeBeforeBreakWifiSwitchingSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMBBSupported(): mIsMBBSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 2119
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    return v0
.end method

.method private isModemReqWifiLock()Z
    .locals 2

    .line 1873
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 1874
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1876
    const/4 v1, 0x1

    return v1

    .line 1873
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1879
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isPrimaryWifi(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "tagType"    # Ljava/lang/String;

    .line 2102
    const/4 v0, 0x0

    .line 2103
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v1, 0x1

    .line 2104
    .local v1, "isPrimary":Z
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    if-eqz v2, :cond_0

    .line 2105
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 2106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2107
    const/4 v1, 0x0

    .line 2108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": not primary wifi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 2111
    :cond_0
    return v1
.end method

.method private isWifiDeferOffNeeded()Z
    .locals 1

    .line 954
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isModemReqWifiLock()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2075
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2076
    return-object p1

    .line 2078
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 2079
    .local v1, "maskLength":I
    const-string v2, "*"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 2080
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2083
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 2084
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2083
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2086
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 567
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 630
    :sswitch_0
    const-string v0, "RESPONSE_GET_WIFI_CONN_STATE_SUPPORT_INFO"

    return-object v0

    .line 608
    :sswitch_1
    const-string v0, "RESPONSE_SET_WIFI_PING_RESULT"

    return-object v0

    .line 606
    :sswitch_2
    const-string v0, "RESPONSE_SET_NATT_KEEP_ALIVE_STATUS"

    return-object v0

    .line 604
    :sswitch_3
    const-string v0, "RESPONSE_SET_WIFI_IP_ADDR"

    return-object v0

    .line 602
    :sswitch_4
    const-string v0, "RESPONSE_SET_WIFI_ASSOC"

    return-object v0

    .line 600
    :sswitch_5
    const-string v0, "RESPONSE_SET_WIFI_SIGNAL_LEVEL"

    return-object v0

    .line 598
    :sswitch_6
    const-string v0, "RESPONSE_SET_WIFI_ENABLED"

    return-object v0

    .line 596
    :sswitch_7
    const-string v0, "EVENT_ON_WIFI_LOCK"

    return-object v0

    .line 612
    :sswitch_8
    const-string v0, "EVENT_HANDLE_AIRPLANE_MODE"

    return-object v0

    .line 592
    :sswitch_9
    const-string v0, "EVENT_SET_WIFI_PING_RESULT"

    return-object v0

    .line 594
    :sswitch_a
    const-string v0, "EVENT_ON_WIFI_PING_REQUEST"

    return-object v0

    .line 586
    :sswitch_b
    const-string v0, "EVENT_ON_NATT_KEEP_ALIVE_CHANGED"

    return-object v0

    .line 584
    :sswitch_c
    const-string v0, "EVENT_ON_WIFI_PDN_ACTIVATE"

    return-object v0

    .line 582
    :sswitch_d
    const-string v0, "EVENT_ON_WIFI_MONITORING_THRESHOLD_CHANGED"

    return-object v0

    .line 610
    :sswitch_e
    const-string v0, "EVENT_GET_WIFI_CONN_STATE_SUPPORT_INFO"

    return-object v0

    .line 628
    :sswitch_f
    const-string v0, "EVENT_MULTI_SIM_CONFIG_CHANGED"

    return-object v0

    .line 626
    :sswitch_10
    const-string v0, "EVENT_INITIALIZE"

    return-object v0

    .line 624
    :sswitch_11
    const-string v0, "EVENT_WIFI_STATE_CHANGE"

    return-object v0

    .line 622
    :sswitch_12
    const-string v0, "EVENT_WIFI_SCAN_AVAILABLE"

    return-object v0

    .line 620
    :sswitch_13
    const-string v0, "EVENT_RETRY_UPDATE_LAST_RSSI"

    return-object v0

    .line 618
    :sswitch_14
    const-string v0, "EVENT_RETRY_CHECK_IF_START_WIFI_SCAN"

    return-object v0

    .line 616
    :sswitch_15
    const-string v0, "EVENT_RETRY_UPDATE_WIFI_CONNTECTED_INFO"

    return-object v0

    .line 614
    :sswitch_16
    const-string v0, "EVENT_RETRY_INIT"

    return-object v0

    .line 590
    :sswitch_17
    const-string v0, "EVENT_SET_NATT_STATUS"

    return-object v0

    .line 588
    :sswitch_18
    const-string v0, "EVENT_WIFI_SCAN"

    return-object v0

    .line 580
    :sswitch_19
    const-string v0, "EVENT_RADIO_AVAILABLE"

    return-object v0

    .line 578
    :sswitch_1a
    const-string v0, "EVENT_SET_WIFI_IP_ADDR"

    return-object v0

    .line 576
    :sswitch_1b
    const-string v0, "EVENT_SET_WIFI_ASSOC"

    return-object v0

    .line 574
    :sswitch_1c
    const-string v0, "EVENT_SET_WIFI_ENABLED"

    return-object v0

    .line 572
    :sswitch_1d
    const-string v0, "EVENT_SET_WIFI_SIGNAL_STRENGTH"

    return-object v0

    .line 570
    :sswitch_1e
    const-string v0, "EVENT_WIFI_NETWORK_STATE_CHANGE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1e
        0x3e9 -> :sswitch_1d
        0x3ea -> :sswitch_1c
        0x3eb -> :sswitch_1b
        0x3ec -> :sswitch_1a
        0x3ed -> :sswitch_19
        0x3ee -> :sswitch_18
        0x3ef -> :sswitch_17
        0x3f0 -> :sswitch_16
        0x3f1 -> :sswitch_15
        0x3f2 -> :sswitch_14
        0x3f3 -> :sswitch_13
        0x3f4 -> :sswitch_12
        0x3f5 -> :sswitch_11
        0x3f7 -> :sswitch_10
        0x3f8 -> :sswitch_f
        0x3f9 -> :sswitch_e
        0x44d -> :sswitch_d
        0x44e -> :sswitch_c
        0x44f -> :sswitch_b
        0x47e -> :sswitch_a
        0x47f -> :sswitch_9
        0x480 -> :sswitch_8
        0x481 -> :sswitch_7
        0x4b0 -> :sswitch_6
        0x4b1 -> :sswitch_5
        0x4b2 -> :sswitch_4
        0x4b3 -> :sswitch_3
        0x4b4 -> :sswitch_2
        0x4b5 -> :sswitch_1
        0x4b7 -> :sswitch_0
    .end sparse-switch
.end method

.method private onMultiSimConfigChanged(I)V
    .locals 5
    .param p1, "activeModemCount"    # I

    .line 774
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    .line 776
    .local v0, "prevActiveModemCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMultiSimConfigChanged, phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSimCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiPdnHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    if-ne v0, p1, :cond_0

    return-void

    .line 781
    :cond_0
    iput p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    .line 783
    if-le v0, p1, :cond_1

    goto :goto_1

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    .line 787
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    .line 788
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRatType:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRatType:[I

    .line 790
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v1, p1}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->notifyMultiSimConfigChanged(I)V

    .line 792
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 793
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x44d

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerRssiThresholdChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 795
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x44e

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnActivated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 797
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x44f

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerNattKeepAliveChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 799
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x47e

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPingRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 803
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x481

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiLock(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 807
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method private onNattKeepAliveChanged(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1060
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1061
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 1063
    .local v1, "result":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->handleKeepAliveChanged([Ljava/lang/String;)V

    .line 1064
    return-void
.end method

.method private onRssiMonitorRequest(II[I)V
    .locals 1
    .param p1, "simId"    # I
    .param p2, "size"    # I
    .param p3, "rssiThresholds"    # [I

    .line 1625
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->registerRssiMonitoring(II[I)V

    .line 1626
    return-void
.end method

.method private onWifiLock(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 2024
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2025
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 2027
    .local v1, "result":[Ljava/lang/String;
    const-string v2, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 2028
    const-string v3, "onWifiLock(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    return-void

    .line 2031
    :cond_0
    array-length v3, v1

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 2032
    const-string v3, "onWifiLock(): Bad params"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    return-void

    .line 2037
    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    aget-object v6, v1, v5

    .line 2038
    .local v6, "wlanIface":Ljava/lang/String;
    aget-object v7, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2039
    .local v7, "enableLock":I
    aget-object v8, v1, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2040
    .local v8, "simIdx":I
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isModemReqWifiLock()Z

    move-result v9

    .line 2041
    .local v9, "preModemWifiLockState":Z
    iget-object v10, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    if-nez v7, :cond_2

    move v11, v5

    goto :goto_0

    :cond_2
    move v11, v4

    :goto_0
    aput-boolean v11, v10, v8

    .line 2042
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isModemReqWifiLock()Z

    move-result v10

    if-eq v9, v10, :cond_3

    .line 2043
    sget-object v10, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-direct {p0, v10, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2048
    .end local v6    # "wlanIface":Ljava/lang/String;
    .end local v7    # "enableLock":I
    .end local v8    # "simIdx":I
    .end local v9    # "preModemWifiLockState":Z
    :cond_3
    goto :goto_1

    .line 2045
    :catch_0
    move-exception v6

    .line 2046
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onWifiLock["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v5, v1, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, v1, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v3, v1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2047
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2046
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private onWifiMonitoringThreshouldChanged(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 872
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 873
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 875
    .local v1, "result":[I
    const-string v2, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 876
    const-string v3, "onWifiMonitoringThreshouldChanged(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void

    .line 880
    :cond_0
    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move v3, v5

    .line 881
    .local v3, "enable":Z
    :cond_1
    array-length v4, v1

    .line 882
    .local v4, "length":I
    add-int/lit8 v6, v4, -0x1

    aget v6, v1, v6

    .line 884
    .local v6, "simIdx":I
    if-nez v3, :cond_2

    .line 885
    const-string v2, "Turn off RSSI monitoring"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 886
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v2, v6}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->unregisterAllRssiMonitoring(I)V

    .line 887
    return-void

    .line 889
    :cond_2
    aget v7, v1, v5

    .line 890
    .local v7, "count":I
    add-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v5

    if-ge v8, v4, :cond_3

    .line 891
    const-string v5, "onWifiMonitoringThreshouldChanged(): Bad params"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void

    .line 894
    :cond_3
    const-string v2, "onWifiMonitoringThreshouldChanged: invalid SIM id"

    invoke-direct {p0, v6, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 895
    return-void

    .line 898
    :cond_4
    new-array v2, v7, [I

    .line 899
    .local v2, "rssi":[I
    const/4 v5, 0x2

    .line 900
    .local v5, "offset":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_5

    .line 901
    add-int v9, v8, v5

    aget v9, v1, v9

    aput v9, v2, v8

    .line 902
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onWifiMonitoringThreshouldChanged(): rssi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v2, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 900
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 905
    .end local v8    # "i":I
    :cond_5
    invoke-direct {p0, v6, v7, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onRssiMonitorRequest(II[I)V

    .line 908
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateLastRssi()V

    .line 909
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 910
    return-void
.end method

.method private onWifiPdnActivate(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 914
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 915
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 916
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 918
    .local v2, "preWifiPdnExited":Z
    const-string v3, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 919
    const-string v4, "onWifiPdnActivate(): result is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-void

    .line 922
    :cond_0
    array-length v4, v1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 923
    const-string v4, "onWifiPdnActivate(): Bad params"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-void

    .line 926
    :cond_1
    const/4 v3, 0x0

    aget v4, v1, v3

    .line 927
    .local v4, "pdnCount":I
    const/4 v6, 0x1

    aget v7, v1, v6

    .line 929
    .local v7, "simIdx":I
    const-string v8, "onWifiPdnActivate(): invalid SIM id"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 930
    return-void

    .line 932
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v2

    .line 934
    const-string v8, "persist.vendor.mims_support"

    invoke-static {v8, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ge v8, v5, :cond_5

    .line 935
    const-string v5, "MIMS does not support, sync up pdn status to all slots."

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 936
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v5, v8, :cond_4

    .line 937
    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    if-lez v4, :cond_3

    move v9, v6

    goto :goto_1

    :cond_3
    move v9, v3

    :goto_1
    aput-boolean v9, v8, v5

    .line 936
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v5    # "i":I
    :cond_4
    goto :goto_3

    .line 940
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MIMS supported, update pdn status to specific slot["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 941
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    if-lez v4, :cond_6

    goto :goto_2

    :cond_6
    move v6, v3

    :goto_2
    aput-boolean v6, v5, v7

    .line 945
    :goto_3
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 951
    return-void
.end method

.method private onWifiPingRequest(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1995
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1996
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1998
    .local v1, "result":[I
    const-string v2, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 1999
    const-string v3, "onWifiPingRequest(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    return-void

    .line 2002
    :cond_0
    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 2003
    const-string v3, "onWifiPingRequest(): Bad params"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    return-void

    .line 2006
    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 2007
    .local v2, "rat":I
    const/4 v3, 0x1

    aget v3, v1, v3

    .line 2009
    .local v3, "simIdx":I
    const-string v4, "onWifiPingRequest(): invalid SIM id"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2010
    return-void

    .line 2013
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWifiPingRequest: rat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", simIdx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 2014
    invoke-direct {p0, v3, v2, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->pingWifiGateway(IILandroid/os/Handler;)V

    .line 2015
    return-void
.end method

.method private pingWifiGateway(IILandroid/os/Handler;)V
    .locals 4
    .param p1, "simId"    # I
    .param p2, "rat"    # I
    .param p3, "hdlr"    # Landroid/os/Handler;

    .line 2018
    new-instance v0, Lcom/mediatek/wfo/impl/PingData;

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/mediatek/wfo/impl/PingData;-><init>(IDI)V

    const/16 v1, 0x47f

    invoke-virtual {p3, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2020
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2021
    return-void
.end method

.method private registerForBroadcast()V
    .locals 3

    .line 844
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 845
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 846
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 847
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    const-string v1, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 849
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 850
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 851
    return-void
.end method

.method private registerIndication()V
    .locals 4

    .line 854
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x44d

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerRssiThresholdChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 857
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x44e

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnActivated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 859
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x44f

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerNattKeepAliveChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 861
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x47e

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPingRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 864
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x481

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiLock(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setNattKeepAliveStatus(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1555
    const/16 v0, 0x4b4

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1556
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 1557
    .local v9, "config":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    .line 1558
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "wlan0"

    :goto_0
    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->isEnabled()Z

    move-result v3

    .line 1559
    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getSrcIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getSrcPort()I

    move-result v5

    .line 1560
    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getDstIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getDstPort()I

    move-result v7

    .line 1557
    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/wfo/ril/MwiRIL;->setNattKeepAliveStatus(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V

    .line 1561
    return-void
.end method

.method private setWifiAssoc()V
    .locals 13

    .line 1491
    const/16 v0, 0x4b2

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1492
    .local v0, "result":Landroid/os/Message;
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 1493
    .local v1, "mtu":I
    if-nez v1, :cond_0

    .line 1494
    const/16 v1, 0x5dc

    move v10, v1

    goto :goto_0

    .line 1493
    :cond_0
    move v10, v1

    .line 1496
    .end local v1    # "mtu":I
    .local v10, "mtu":I
    :goto_0
    iget v11, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    .line 1497
    .local v11, "wifiConnState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiAssoc() ifName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " associated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 1498
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apMac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ueMac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    .line 1499
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mtu = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wifiConnState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1497
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1501
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 1502
    .local v1, "isWifiConnected":Z
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1503
    const/4 v1, 0x0

    move v12, v1

    goto :goto_1

    .line 1502
    :cond_1
    move v12, v1

    .line 1505
    .end local v1    # "isWifiConnected":Z
    .local v12, "isWifiConnected":Z
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v2, "wlan0"

    :goto_2
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    sget-object v7, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    move v3, v12

    move v6, v10

    move v8, v11

    move-object v9, v0

    invoke-virtual/range {v1 .. v9}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiAssociated(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V

    .line 1508
    return-void
.end method

.method private setWifiEnabled()V
    .locals 8

    .line 1336
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v0

    .line 1337
    .local v0, "isInEcc":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAirplaneModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEccInProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1341
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1343
    .local v1, "wifiEnable":Z
    const-string v2, "persist.vendor.mtk.wfc.enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 1344
    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v3

    .line 1345
    .local v7, "bCause":Z
    :goto_0
    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    const/4 v5, 0x1

    move-object v2, p0

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->generateWifiEnableCause(ZZZZZ)I

    move-result v2

    .line 1348
    .local v2, "cause":I
    const/16 v3, 0x4b0

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1349
    .local v3, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    .line 1350
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v5, "wlan0"

    .line 1351
    :goto_1
    nop

    .line 1349
    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiEnabled(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1352
    return-void
.end method

.method private setWifiEnabledWithSyncAPMode()V
    .locals 11

    .line 1355
    const/16 v0, 0x4b0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1356
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v1

    .line 1359
    .local v1, "isInEcc":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getAirplaneModeFromSettings()Z

    move-result v2

    .line 1360
    .local v2, "isAirplaneModeOn":Z
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eq v3, v2, :cond_0

    .line 1361
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 1362
    const-string v3, "setWifiEnabledWithSyncAPMode(): update mIsAirplaneModeOn from settings"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    .end local v2    # "isAirplaneModeOn":Z
    :cond_0
    goto :goto_0

    .line 1364
    :catch_0
    move-exception v2

    .line 1365
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiPdnHandler"

    const-string v4, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiEnabledWithSyncAPMode(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsAirplaneModeOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isEccInProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1372
    const-string v2, "persist.vendor.mtk.wfc.enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 1373
    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v3

    .line 1375
    .local v7, "bCause":Z
    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    move-object v5, p0

    move v10, v7

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->generateWifiEnableCause(ZZZZZ)I

    move-result v2

    .line 1377
    .local v2, "cause":I
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v3

    .line 1378
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v4, "wlan0"

    .line 1379
    :goto_2
    iget-boolean v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1377
    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiEnabled(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1380
    return-void
.end method

.method private setWifiIpAddress()V
    .locals 14

    .line 1511
    const/16 v0, 0x4b3

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1512
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiIpAddr() ifName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ipv4Addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ipv6Addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1513
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ipv4PrefixLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ipv6PrefixLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1512
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1516
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    const-string v2, "wlan0"

    if-eqz v1, :cond_3

    .line 1517
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    .line 1518
    .local v12, "dnsCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    .line 1520
    .local v13, "dnsServers":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1521
    .local v3, "address":Ljava/net/InetAddress;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1522
    const-string v4, ","

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    :cond_0
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1525
    .local v4, "dnsServerAddress":Ljava/lang/String;
    const-string v5, "\""

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiIpAddress(): dnsServerAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1529
    .end local v3    # "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 1531
    .end local v4    # "dnsServerAddress":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    .line 1532
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    :cond_2
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    iget v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 1539
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1531
    move v9, v12

    move-object v11, v0

    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiIpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1540
    .end local v12    # "dnsCount":I
    .end local v13    # "dnsServers":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 1541
    :cond_3
    const-string v1, "WifiPdnHandler"

    const-string v3, "setWifiIpAddress(): mDnsServers = null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    .line 1543
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    :cond_4
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    iget v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    const/4 v9, 0x0

    .line 1542
    const-string v10, "\"\""

    move-object v11, v0

    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiIpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1552
    :goto_1
    return-void
.end method

.method private setWifiPingResult(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1564
    const/16 v0, 0x4b5

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1566
    .local v0, "result":Landroid/os/Message;
    const/4 v1, 0x0

    .line 1567
    .local v1, "latency":I
    const/4 v2, 0x0

    .line 1568
    .local v2, "pktLoss":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/wfo/impl/PingData;

    .line 1569
    .local v3, "data":Lcom/mediatek/wfo/impl/PingData;
    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v4, :cond_0

    .line 1570
    const-string v4, "setWifiPingResult() As optr server has delayed response"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1571
    const/4 v2, 0x0

    .line 1572
    const/16 v1, 0x32

    goto :goto_0

    .line 1574
    :cond_0
    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/PingData;->getPingLatency()D

    move-result-wide v4

    double-to-int v1, v4

    .line 1575
    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/PingData;->getPacketLoss()I

    move-result v2

    .line 1577
    :goto_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1578
    .local v4, "simIdx":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 1579
    .local v5, "rat":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWifiPingResult() latency: = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", packetLost: = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1581
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v6, v6, v4

    invoke-virtual {v6, v5, v1, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiPingResult(IIILandroid/os/Message;)V

    .line 1582
    return-void
.end method

.method private setWifiSignalLevel()V
    .locals 4

    .line 1473
    const/16 v0, 0x4b1

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1474
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiSignalLevel(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1475
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    const/16 v3, 0x3c

    invoke-virtual {v1, v2, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiSignalLevel(IILandroid/os/Message;)V

    .line 1476
    return-void
.end method

.method private setWifiUeMac()V
    .locals 4

    .line 1585
    const/16 v0, 0x4b6

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1586
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    const-string v3, "wlan0"

    invoke-virtual {v1, v3, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWfcConfig_WifiUeMac(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1587
    return-void
.end method

.method private setupCallbacksForWifiStatus()V
    .locals 2

    .line 1678
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1679
    const-string v0, "Unexpected error, mConnectivityManager = null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1680
    return-void

    .line 1683
    :cond_0
    new-instance v1, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1852
    return-void
.end method

.method private setupCallbacksForWifiStatusEx()V
    .locals 3

    .line 1629
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1630
    const-string v0, "Unexpected error, mConnectivityManager = null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1631
    return-void

    .line 1634
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 1635
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 1636
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1637
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1638
    .local v0, "request":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v2, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;

    invoke-direct {v2, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1672
    return-void
.end method

.method private updateLastRssi()V
    .locals 3

    .line 1883
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1884
    const-string v0, "WifiPdnHandler"

    const-string v1, "updateLastRssi(): WifiManager null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const/16 v0, 0x3f3

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1886
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1887
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1888
    monitor-exit v2

    .line 1889
    return-void

    .line 1888
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1892
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1893
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1

    .line 1894
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    .line 1896
    :cond_1
    return-void
.end method

.method private updateSsidToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;

    .line 1899
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1900
    const-string v0, ""

    return-object v0

    .line 1903
    :cond_0
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1904
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1907
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1908
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1909
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 1910
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v0, v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1914
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updateWfcCapabilityByPhoneId(IZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "isAirPlaneModeOn"    # Z

    .line 1405
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1406
    .local v0, "imsMgr":Lcom/android/ims/ImsManager;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    .line 1408
    .local v1, "enabled":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWfcCapabilityByPhoneId: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ApMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1411
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_0

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 1414
    .local v4, "isFeatureOn":Z
    :goto_0
    :try_start_0
    new-array v5, v3, [I

    aput v3, v5, v2

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/ims/ImsManager;->changeMmTelCapability(ZI[I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    goto :goto_1

    .line 1418
    :catch_0
    move-exception v2

    .line 1419
    .local v2, "e":Lcom/android/ims/ImsException;
    const-string v3, "WifiPdnHandler"

    const-string v5, "changeMmTelCapability failed."

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_1
    return-void
.end method

.method private updateWifiConnectedInfo(I)V
    .locals 28
    .param p1, "isConnected"    # I

    .line 1067
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    .line 1068
    .local v0, "changed":Z
    const/4 v3, 0x0

    .line 1070
    .local v3, "ipAddrChanged":Z
    sget-object v4, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_1

    .line 1071
    iget-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    if-eqz v4, :cond_0

    .line 1072
    invoke-virtual {v4, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->updatedWifiConnectedStatus(Z)V

    .line 1075
    :cond_0
    iget-boolean v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v4, :cond_27

    .line 1076
    iput-boolean v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 1077
    sget-object v4, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v4

    iput v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    .line 1078
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 1079
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 1080
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1081
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    .line 1082
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 1083
    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    .line 1084
    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 1085
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 1088
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 1089
    iput v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 1090
    const/4 v0, 0x1

    .line 1091
    const/4 v3, 0x1

    goto/16 :goto_12

    .line 1094
    :cond_1
    iget-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    .line 1095
    invoke-virtual {v4, v7}, Lcom/mediatek/wfo/impl/WfcHandler;->updatedWifiConnectedStatus(Z)V

    .line 1098
    :cond_2
    const-string v4, ""

    .local v4, "wifiApMac":Ljava/lang/String;
    const-string v8, ""

    .local v8, "ipv4Address":Ljava/lang/String;
    const-string v9, ""

    .local v9, "ipv6Address":Ljava/lang/String;
    const-string v10, ""

    .local v10, "ifName":Ljava/lang/String;
    const-string v11, ""

    .line 1099
    .local v11, "ssid":Ljava/lang/String;
    const/4 v12, -0x1

    .line 1100
    .local v12, "ipv4PrefixLen":I
    const/4 v13, -0x1

    .line 1101
    .local v13, "ipv6PrefixLen":I
    const/4 v14, 0x0

    .line 1102
    .local v14, "routeIpv4":Landroid/net/RouteInfo;
    const/4 v15, 0x0

    .line 1103
    .local v15, "routeIpv6":Landroid/net/RouteInfo;
    const-string v16, ""

    .line 1104
    .local v16, "ipv4Gateway":Ljava/lang/String;
    const-string v17, ""

    .line 1106
    .local v17, "ipv6Gateway":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1107
    .local v18, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/16 v19, 0x0

    .line 1108
    .local v19, "mtu":I
    sget-object v20, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v5

    if-ne v2, v5, :cond_4

    .line 1109
    iget-boolean v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-nez v5, :cond_3

    .line 1110
    const/4 v0, 0x1

    .line 1112
    :cond_3
    iput-boolean v7, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 1114
    sget-object v5, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v5

    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    move v5, v0

    goto :goto_0

    .line 1115
    :cond_4
    sget-object v5, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v5

    if-ne v2, v5, :cond_7

    .line 1116
    iget v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    sget-object v20, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v6

    if-eq v5, v6, :cond_5

    .line 1117
    const/4 v0, 0x1

    .line 1119
    :cond_5
    sget-object v5, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v5

    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiConnState:I

    .line 1121
    iget-boolean v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v5, :cond_6

    .line 1122
    const-string v5, "updateWifiConnectedInfo: no need update"

    invoke-virtual {v1, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1123
    return-void

    .line 1121
    :cond_6
    move v5, v0

    goto :goto_0

    .line 1115
    :cond_7
    move v5, v0

    .line 1129
    .end local v0    # "changed":Z
    .local v5, "changed":Z
    :goto_0
    iget-boolean v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1130
    iput-boolean v7, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1131
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 1135
    :cond_8
    const/4 v6, 0x0

    .line 1136
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_9

    .line 1137
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    move/from16 v20, v3

    goto :goto_1

    .line 1139
    :cond_9
    const/16 v0, 0x3f1

    move/from16 v20, v3

    const/4 v7, 0x0

    .end local v3    # "ipAddrChanged":Z
    .local v20, "ipAddrChanged":Z
    invoke-virtual {v1, v0, v2, v7}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 1141
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1142
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    .end local v3    # "msg":Landroid/os/Message;
    :goto_1
    if-eqz v6, :cond_d

    .line 1147
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    .line 1148
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 1149
    .local v0, "tempSsid":Ljava/lang/String;
    const-string v3, "<unknown ssid>"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1150
    const-string v0, ""

    .line 1151
    const-string v3, "updateWifiConnectedInfo: <unknown ssid>"

    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1153
    :cond_a
    invoke-direct {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateSsidToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1155
    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 1156
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v4, :cond_d

    .line 1157
    :cond_b
    if-nez v4, :cond_c

    const-string v3, ""

    goto :goto_2

    :cond_c
    move-object v3, v4

    :goto_2
    iput-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 1158
    const/4 v5, 0x1

    .line 1159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWifiConnectedInfo(): mWifiApMac = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    invoke-direct {v1, v7}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1164
    .end local v0    # "tempSsid":Ljava/lang/String;
    :cond_d
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v3, v0

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v7, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    const/4 v6, 0x0

    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v16    # "ipv4Gateway":Ljava/lang/String;
    .end local v17    # "ipv6Gateway":Ljava/lang/String;
    .end local v18    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v19    # "mtu":I
    .local v2, "ipv6Gateway":Ljava/lang/String;
    .local v4, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v5, "mtu":I
    .local v7, "ipv4Gateway":Ljava/lang/String;
    .local v21, "wifiApMac":Ljava/lang/String;
    .local v22, "changed":Z
    .local v23, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_3
    if-ge v6, v3, :cond_1a

    move/from16 v24, v3

    aget-object v3, v0, v6

    .line 1165
    .local v3, "nw":Landroid/net/Network;
    move-object/from16 v25, v0

    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 1168
    .local v0, "prop":Landroid/net/LinkProperties;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_19

    .line 1169
    move-object/from16 v26, v14

    .end local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .local v26, "routeIpv4":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v27, v15

    .end local v15    # "routeIpv6":Landroid/net/RouteInfo;
    .local v27, "routeIpv6":Landroid/net/RouteInfo;
    const-string v15, "wlan"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 1170
    goto/16 :goto_9

    .line 1173
    :cond_e
    iget-boolean v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsMBBSupport:Z

    if-eqz v14, :cond_f

    .line 1174
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateWifiConnectedInfo(): ifName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1175
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1174
    invoke-virtual {v1, v14}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1180
    :cond_f
    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v14, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v14

    .line 1181
    .local v14, "nc":Landroid/net/NetworkCapabilities;
    const-string v15, "updateWifiConnectedInfo"

    invoke-direct {v1, v14, v15}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isPrimaryWifi(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 1182
    goto/16 :goto_9

    .line 1186
    :cond_10
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/LinkAddress;

    .line 1187
    .local v16, "linkAddr":Landroid/net/LinkAddress;
    move-object/from16 v17, v3

    .end local v3    # "nw":Landroid/net/Network;
    .local v17, "nw":Landroid/net/Network;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 1188
    .local v3, "address":Ljava/net/InetAddress;
    move-object/from16 v18, v8

    .end local v8    # "ipv4Address":Ljava/lang/String;
    .local v18, "ipv4Address":Ljava/lang/String;
    instance-of v8, v3, Ljava/net/Inet4Address;

    if-eqz v8, :cond_11

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_11

    .line 1189
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 1190
    .end local v18    # "ipv4Address":Ljava/lang/String;
    .restart local v8    # "ipv4Address":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v12

    goto/16 :goto_6

    .line 1191
    .end local v8    # "ipv4Address":Ljava/lang/String;
    .restart local v18    # "ipv4Address":Ljava/lang/String;
    :cond_11
    instance-of v8, v3, Ljava/net/Inet6Address;

    if-eqz v8, :cond_14

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_14

    .line 1192
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_13

    .line 1196
    invoke-static {v3}, Lcom/android/net/module/util/ConnectivityUtils;->isIPv6ULA(Ljava/net/InetAddress;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1197
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 1198
    .end local v9    # "ipv6Address":Ljava/lang/String;
    .local v8, "ipv6Address":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v12

    .end local v12    # "ipv4PrefixLen":I
    .local v19, "ipv4PrefixLen":I
    const-string v12, "updateWifiConnectedInfo(): ipv6Address = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1199
    invoke-direct {v1, v8}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1198
    invoke-virtual {v1, v9}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1200
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v9

    move v13, v9

    move/from16 v12, v19

    move-object v9, v8

    move-object/from16 v8, v18

    .end local v13    # "ipv6PrefixLen":I
    .local v9, "ipv6PrefixLen":I
    goto :goto_6

    .line 1202
    .end local v8    # "ipv6Address":Ljava/lang/String;
    .end local v19    # "ipv4PrefixLen":I
    .local v9, "ipv6Address":Ljava/lang/String;
    .restart local v12    # "ipv4PrefixLen":I
    .restart local v13    # "ipv6PrefixLen":I
    :cond_12
    move/from16 v19, v12

    .end local v12    # "ipv4PrefixLen":I
    .restart local v19    # "ipv4PrefixLen":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWifiConnectedInfo(): ipv6ULA = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1203
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1202
    invoke-virtual {v1, v8}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 1192
    .end local v19    # "ipv4PrefixLen":I
    .restart local v12    # "ipv4PrefixLen":I
    :cond_13
    move/from16 v19, v12

    .end local v12    # "ipv4PrefixLen":I
    .restart local v19    # "ipv4PrefixLen":I
    goto :goto_5

    .line 1191
    .end local v19    # "ipv4PrefixLen":I
    .restart local v12    # "ipv4PrefixLen":I
    :cond_14
    move/from16 v19, v12

    .line 1211
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v12    # "ipv4PrefixLen":I
    .end local v16    # "linkAddr":Landroid/net/LinkAddress;
    .restart local v19    # "ipv4PrefixLen":I
    :goto_5
    move-object/from16 v8, v18

    move/from16 v12, v19

    .end local v18    # "ipv4Address":Ljava/lang/String;
    .end local v19    # "ipv4PrefixLen":I
    .local v8, "ipv4Address":Ljava/lang/String;
    .restart local v12    # "ipv4PrefixLen":I
    :goto_6
    move-object/from16 v3, v17

    goto/16 :goto_4

    .line 1213
    .end local v17    # "nw":Landroid/net/Network;
    .local v3, "nw":Landroid/net/Network;
    :cond_15
    move-object/from16 v17, v3

    move-object/from16 v18, v8

    move/from16 v19, v12

    .end local v3    # "nw":Landroid/net/Network;
    .end local v8    # "ipv4Address":Ljava/lang/String;
    .end local v12    # "ipv4PrefixLen":I
    .restart local v17    # "nw":Landroid/net/Network;
    .restart local v18    # "ipv4Address":Ljava/lang/String;
    .restart local v19    # "ipv4PrefixLen":I
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    .line 1214
    .end local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v3, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getMtu()I

    move-result v4

    .line 1216
    .end local v5    # "mtu":I
    .local v4, "mtu":I
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .line 1217
    .local v8, "routeInfo":Landroid/net/RouteInfo;
    invoke-virtual {v8}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 1218
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v12

    .line 1219
    .local v12, "gateway":Ljava/net/InetAddress;
    if-eqz v12, :cond_16

    instance-of v15, v12, Ljava/net/Inet4Address;

    if-eqz v15, :cond_16

    .line 1220
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 1221
    :cond_16
    if-eqz v12, :cond_17

    instance-of v15, v12, Ljava/net/Inet6Address;

    if-eqz v15, :cond_17

    .line 1222
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1225
    .end local v8    # "routeInfo":Landroid/net/RouteInfo;
    .end local v12    # "gateway":Ljava/net/InetAddress;
    :cond_17
    :goto_8
    goto :goto_7

    .line 1227
    :cond_18
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    move-object/from16 v8, v18

    move/from16 v12, v19

    move v5, v4

    move-object v4, v3

    .end local v10    # "ifName":Ljava/lang/String;
    .local v5, "ifName":Ljava/lang/String;
    goto :goto_9

    .line 1168
    .end local v17    # "nw":Landroid/net/Network;
    .end local v18    # "ipv4Address":Ljava/lang/String;
    .end local v19    # "ipv4PrefixLen":I
    .end local v26    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v27    # "routeIpv6":Landroid/net/RouteInfo;
    .local v3, "nw":Landroid/net/Network;
    .local v4, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v5, "mtu":I
    .local v8, "ipv4Address":Ljava/lang/String;
    .restart local v10    # "ifName":Ljava/lang/String;
    .local v12, "ipv4PrefixLen":I
    .local v14, "routeIpv4":Landroid/net/RouteInfo;
    .restart local v15    # "routeIpv6":Landroid/net/RouteInfo;
    :cond_19
    move-object/from16 v17, v3

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .line 1164
    .end local v0    # "prop":Landroid/net/LinkProperties;
    .end local v3    # "nw":Landroid/net/Network;
    .end local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v15    # "routeIpv6":Landroid/net/RouteInfo;
    .restart local v26    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v27    # "routeIpv6":Landroid/net/RouteInfo;
    :goto_9
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v24

    move-object/from16 v0, v25

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    goto/16 :goto_3

    .line 1230
    .end local v26    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v27    # "routeIpv6":Landroid/net/RouteInfo;
    .restart local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v15    # "routeIpv6":Landroid/net/RouteInfo;
    :cond_1a
    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .end local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v15    # "routeIpv6":Landroid/net/RouteInfo;
    .restart local v26    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v27    # "routeIpv6":Landroid/net/RouteInfo;
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1231
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, ""

    goto :goto_a

    :cond_1b
    move-object v0, v8

    :goto_a
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 1232
    iput v12, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    .line 1233
    iput-object v7, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    .line 1234
    const/4 v3, 0x1

    .line 1235
    .end local v20    # "ipAddrChanged":Z
    .local v3, "ipAddrChanged":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWifiConnectedInfo(): mWifiIpv4Address = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 1236
    invoke-direct {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1235
    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 1230
    .end local v3    # "ipAddrChanged":Z
    .restart local v20    # "ipAddrChanged":Z
    :cond_1c
    move/from16 v3, v20

    .line 1238
    .end local v20    # "ipAddrChanged":Z
    .restart local v3    # "ipAddrChanged":Z
    :goto_b
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1239
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, ""

    goto :goto_c

    :cond_1d
    move-object v0, v9

    :goto_c
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1240
    iput v13, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 1241
    iput-object v2, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 1242
    const/4 v3, 0x1

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWifiConnectedInfo(): mWifiIpv6Address = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1244
    invoke-direct {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1243
    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_d

    .line 1248
    :cond_1e
    const/4 v0, -0x1

    if-eq v13, v0, :cond_1f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1249
    const-string v6, "updateWifiConnectedInfo(): remove ipv6 address"

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1250
    const-string v6, ""

    iput-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1251
    iput v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 1252
    const/4 v3, 0x1

    .line 1256
    :cond_1f
    :goto_d
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1257
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldIfName:Ljava/lang/String;

    .line 1258
    if-nez v10, :cond_20

    const-string v0, ""

    goto :goto_e

    :cond_20
    move-object v0, v10

    :goto_e
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    .line 1259
    const/4 v0, 0x1

    .line 1260
    .end local v22    # "changed":Z
    .local v0, "changed":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateWifiConnectedInfo(): mIfName = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " mOldIfName = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldIfName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1262
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1263
    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWlanMacAddrByIfName(Ljava/lang/String;)V

    goto :goto_f

    .line 1256
    .end local v0    # "changed":Z
    .restart local v22    # "changed":Z
    :cond_21
    move/from16 v0, v22

    .line 1267
    .end local v22    # "changed":Z
    .restart local v0    # "changed":Z
    :cond_22
    :goto_f
    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    .line 1268
    if-nez v11, :cond_23

    const-string v6, ""

    goto :goto_10

    :cond_23
    move-object v6, v11

    :goto_10
    iput-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 1269
    const/4 v0, 0x1

    .line 1270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateWifiConnectedInfo(): mSsid = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    invoke-direct {v1, v14}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1273
    :cond_24
    if-eqz v4, :cond_26

    .line 1274
    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    if-nez v6, :cond_25

    .line 1275
    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 1276
    const/4 v3, 0x1

    .line 1277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateWifiConnectedInfo(): mDnsServers ="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_11

    .line 1279
    :cond_25
    new-instance v6, Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-direct {v6, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1280
    .local v6, "common":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v6, v4}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 1281
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-eq v14, v15, :cond_26

    .line 1282
    const/4 v3, 0x1

    .line 1283
    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 1284
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateWifiConnectedInfo(): mDnsServers ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1289
    .end local v6    # "common":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_26
    :goto_11
    if-ltz v5, :cond_27

    iget v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    if-eq v6, v5, :cond_27

    .line 1290
    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 1291
    const/4 v0, 0x1

    .line 1292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateWifiConnectedInfo(): mMtu = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1297
    .end local v2    # "ipv6Gateway":Ljava/lang/String;
    .end local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v5    # "mtu":I
    .end local v7    # "ipv4Gateway":Ljava/lang/String;
    .end local v8    # "ipv4Address":Ljava/lang/String;
    .end local v9    # "ipv6Address":Ljava/lang/String;
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "ssid":Ljava/lang/String;
    .end local v12    # "ipv4PrefixLen":I
    .end local v13    # "ipv6PrefixLen":I
    .end local v21    # "wifiApMac":Ljava/lang/String;
    .end local v23    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v26    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v27    # "routeIpv6":Landroid/net/RouteInfo;
    :cond_27
    :goto_12
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 1299
    if-eqz v0, :cond_28

    .line 1300
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiAssoc()V

    .line 1303
    :cond_28
    if-eqz v3, :cond_29

    .line 1304
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiIpAddress()V

    .line 1307
    :cond_29
    iget-boolean v2, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v2, :cond_2a

    iget-boolean v2, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    if-eqz v2, :cond_2a

    .line 1308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWifiConnectedInfo(): mRssiChange = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1309
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 1312
    :cond_2a
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    .line 1313
    return-void

    .line 1143
    .end local v0    # "changed":Z
    .local v3, "msg":Landroid/os/Message;
    .local v4, "wifiApMac":Ljava/lang/String;
    .local v5, "changed":Z
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v8    # "ipv4Address":Ljava/lang/String;
    .restart local v9    # "ipv6Address":Ljava/lang/String;
    .restart local v10    # "ifName":Ljava/lang/String;
    .restart local v11    # "ssid":Ljava/lang/String;
    .restart local v12    # "ipv4PrefixLen":I
    .restart local v13    # "ipv6PrefixLen":I
    .restart local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v15    # "routeIpv6":Landroid/net/RouteInfo;
    .local v16, "ipv4Gateway":Ljava/lang/String;
    .local v17, "ipv6Gateway":Ljava/lang/String;
    .local v18, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v19, "mtu":I
    .restart local v20    # "ipAddrChanged":Z
    :catchall_0
    move-exception v0

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .end local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v15    # "routeIpv6":Landroid/net/RouteInfo;
    .restart local v26    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v27    # "routeIpv6":Landroid/net/RouteInfo;
    :goto_13
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_13
.end method

.method private updateWlanMacAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "ifName"    # Ljava/lang/String;

    .line 1966
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1967
    .local v0, "wnif":Ljava/net/NetworkInterface;
    const-string v1, ""

    if-nez v0, :cond_0

    .line 1968
    :try_start_1
    const-string v2, "updateWlanMacAddr wnif == null"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1969
    return-object v1

    .line 1971
    :cond_0
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 1972
    .local v2, "macBytes":[B
    if-nez v2, :cond_1

    .line 1973
    const-string v3, "updateWlanMacAddr macBytes == null"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1974
    return-object v1

    .line 1977
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1978
    .local v1, "res1":Ljava/lang/StringBuilder;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_2

    aget-byte v7, v2, v5

    .line 1979
    .local v7, "b":B
    const-string v8, "%02X:"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    nop

    .end local v7    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1982
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1983
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1985
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 1987
    .end local v0    # "wnif":Ljava/net/NetworkInterface;
    .end local v1    # "res1":Ljava/lang/StringBuilder;
    .end local v2    # "macBytes":[B
    :catch_0
    move-exception v0

    .line 1988
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWlanMacAddr exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiPdnHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method private updateWlanMacAddrByIfName(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifName"    # Ljava/lang/String;

    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWlanMacAddrByIfName ifName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1953
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWlanMacAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1954
    .local v0, "currentUeMac":Ljava/lang/String;
    const-string v1, "02:00:00:00:00:00"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1958
    :cond_0
    sget-object v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1959
    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    .line 1960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWlanMacAddrByIfName mWifiUeMac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1962
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 637
    return-object p0
.end method

.method public getLastRssi()I
    .locals 1

    .line 1918
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 367
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 368
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponseWifiConnStateSupportInfo(Landroid/os/AsyncResult;)V

    .line 369
    goto/16 :goto_3

    .line 351
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 352
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3f6

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponse(ILandroid/os/AsyncResult;)V

    .line 353
    goto/16 :goto_3

    .line 363
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 364
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x47f

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponse(ILandroid/os/AsyncResult;)V

    .line 365
    goto/16 :goto_3

    .line 359
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 360
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3ef

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponse(ILandroid/os/AsyncResult;)V

    .line 361
    goto/16 :goto_3

    .line 355
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 356
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3ec

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponse(ILandroid/os/AsyncResult;)V

    .line 357
    goto/16 :goto_3

    .line 347
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 348
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3eb

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponse(ILandroid/os/AsyncResult;)V

    .line 349
    goto/16 :goto_3

    .line 343
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 344
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3e9

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponse(ILandroid/os/AsyncResult;)V

    .line 345
    goto/16 :goto_3

    .line 339
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 340
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3ea

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleResponse(ILandroid/os/AsyncResult;)V

    .line 341
    goto/16 :goto_3

    .line 334
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiLock(Landroid/os/Message;)V

    .line 335
    goto/16 :goto_3

    .line 371
    :sswitch_9
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleAirplaneMode()V

    .line 372
    goto/16 :goto_3

    .line 317
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiPingResult(Landroid/os/Message;)V

    .line 318
    goto/16 :goto_3

    .line 331
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiPingRequest(Landroid/os/Message;)V

    .line 332
    goto/16 :goto_3

    .line 328
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onNattKeepAliveChanged(Landroid/os/Message;)V

    .line 329
    goto/16 :goto_3

    .line 325
    :sswitch_d
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiPdnActivate(Landroid/os/Message;)V

    .line 326
    goto/16 :goto_3

    .line 322
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiMonitoringThreshouldChanged(Landroid/os/Message;)V

    .line 323
    goto/16 :goto_3

    .line 419
    :sswitch_f
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getWifiConnStateSupportInfo()V

    .line 420
    goto/16 :goto_3

    .line 413
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 414
    .local v0, "activeModemCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_MULTI_SIM_CONFIG_CHANGED, activeModemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onMultiSimConfigChanged(I)V

    .line 416
    goto/16 :goto_3

    .line 409
    .end local v0    # "activeModemCount":I
    :sswitch_11
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initialize()V

    .line 410
    goto/16 :goto_3

    .line 287
    :sswitch_12
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiUeMac()V

    .line 288
    goto/16 :goto_3

    .line 405
    :sswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiStateChange(I)V

    .line 406
    goto/16 :goto_3

    .line 395
    :sswitch_14
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 397
    .local v2, "retryMsg":Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 399
    .end local v2    # "retryMsg":Landroid/os/Message;
    goto :goto_0

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 401
    monitor-exit v0

    .line 402
    goto/16 :goto_3

    .line 401
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 390
    :sswitch_15
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateLastRssi()V

    .line 391
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 392
    goto/16 :goto_3

    .line 384
    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 385
    .local v0, "scanImmediately":Z
    const-string v1, "WifiPdnHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry checkIfstartWifiScan, scanImmediately: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 387
    goto/16 :goto_3

    .line 379
    .end local v0    # "scanImmediately":Z
    :sswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 380
    .local v0, "isConnected":I
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWifiConnectedInfo(I)V

    .line 381
    goto/16 :goto_3

    .line 375
    .end local v0    # "isConnected":I
    :sswitch_18
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initWifiManager()V

    .line 376
    goto/16 :goto_3

    .line 314
    :sswitch_19
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setNattKeepAliveStatus(Landroid/os/Message;)V

    .line 315
    goto/16 :goto_3

    .line 311
    :sswitch_1a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 312
    goto/16 :goto_3

    .line 294
    :sswitch_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync airplane mode to MD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 295
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    if-eqz v0, :cond_1

    .line 296
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 297
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->allowWfcInAirplaneMode()V

    .line 298
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabledWithSyncAPMode()V

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiAssoc()V

    .line 302
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 303
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v0, :cond_4

    .line 304
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 305
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiIpAddress()V

    .line 306
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    goto :goto_3

    .line 290
    :sswitch_1c
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiIpAddress()V

    .line 291
    goto :goto_3

    .line 284
    :sswitch_1d
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiAssoc()V

    .line 285
    goto :goto_3

    .line 281
    :sswitch_1e
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 282
    goto :goto_3

    .line 275
    :sswitch_1f
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v0, :cond_4

    .line 276
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 277
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    goto :goto_3

    .line 264
    :sswitch_20
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 265
    .restart local v0    # "isConnected":I
    if-nez v0, :cond_2

    .line 266
    const-string v1, "wifi is disconnect, notify packet keep alive to stop"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-virtual {v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->notifyWifiDisconnect()V

    goto :goto_2

    .line 269
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isIfNameChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v1, "wlan0"

    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWlanMacAddrByIfName(Ljava/lang/String;)V

    .line 271
    :goto_2
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWifiConnectedInfo(I)V

    .line 272
    nop

    .line 426
    .end local v0    # "isConnected":I
    :cond_4
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_20
        0x3e9 -> :sswitch_1f
        0x3ea -> :sswitch_1e
        0x3eb -> :sswitch_1d
        0x3ec -> :sswitch_1c
        0x3ed -> :sswitch_1b
        0x3ee -> :sswitch_1a
        0x3ef -> :sswitch_19
        0x3f0 -> :sswitch_18
        0x3f1 -> :sswitch_17
        0x3f2 -> :sswitch_16
        0x3f3 -> :sswitch_15
        0x3f4 -> :sswitch_14
        0x3f5 -> :sswitch_13
        0x3f6 -> :sswitch_12
        0x3f7 -> :sswitch_11
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_f
        0x44d -> :sswitch_e
        0x44e -> :sswitch_d
        0x44f -> :sswitch_c
        0x47e -> :sswitch_b
        0x47f -> :sswitch_a
        0x480 -> :sswitch_9
        0x481 -> :sswitch_8
        0x4b0 -> :sswitch_7
        0x4b1 -> :sswitch_6
        0x4b2 -> :sswitch_5
        0x4b3 -> :sswitch_4
        0x4b4 -> :sswitch_3
        0x4b5 -> :sswitch_2
        0x4b6 -> :sswitch_1
        0x4b7 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleRadioStateChanged(II)V
    .locals 3
    .param p1, "simIdx"    # I
    .param p2, "intRadioState"    # I

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRadioStateChanged intRadioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 642
    iput p2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    .line 643
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    .line 644
    const-string v0, "send EVENT_RADIO_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 645
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v0

    .line 647
    .local v0, "isInEcc":Z
    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-ne p2, v1, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v2, :cond_1

    .line 649
    :cond_0
    const-string v2, "Disable airplane mode if radio is on"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 650
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 651
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 654
    :cond_1
    if-ne p2, v1, :cond_2

    .line 655
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/MwiRIL;->handleRadioProxyForRadioAvailable()V

    .line 657
    :cond_2
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 658
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 660
    .end local v0    # "isInEcc":Z
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public isWifiConnected()Z
    .locals 1

    .line 840
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    return v0
.end method

.method public isWifiPdnExisted()Z
    .locals 3

    .line 1863
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 1864
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiPdnExisted: found WiFi PDN on SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1866
    const/4 v1, 0x1

    return v1

    .line 1863
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1869
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2061
    sget-boolean v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->USR_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->TELDBG:Z

    if-eqz v0, :cond_1

    .line 2062
    :cond_0
    const-string v0, "WifiPdnHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    :cond_1
    return-void
.end method

.method protected notifyMultiSimConfigChanged(I[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 2
    .param p1, "activeModemCount"    # I
    .param p2, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 768
    iput-object p2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 769
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3f8

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 770
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 771
    return-void
.end method

.method public setWfcHandler(Lcom/mediatek/wfo/impl/WfcHandler;)V
    .locals 0
    .param p1, "wfcHandler"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 2067
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 2068
    return-void
.end method

.method public setWifiOff()V
    .locals 1

    .line 1468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1469
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 1470
    return-void
.end method
