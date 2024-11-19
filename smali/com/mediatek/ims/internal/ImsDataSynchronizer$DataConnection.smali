.class public Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "ImsDataSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsDataSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkLostCallback;,
        Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;,
        Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DisconnectingState;,
        Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActiveState;,
        Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;,
        Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;,
        Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DefaultState;
    }
.end annotation


# static fields
.field private static final STATUS_ABORT:I = 0x1

.field private static final STATUS_SUCCESS:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActivatingState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;

.field private mActiveState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActiveState;

.field private mAvailableListener:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;

.field private mCapability:I

.field private mConn:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDefaultState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DefaultState;

.field private mDisconnectingState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DisconnectingState;

.field private mImsNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mInactiveState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;

.field private mLostListener:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkLostCallback;

.field private mPdnSatate:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mHandler"    # Landroid/os/Handler;
    .param p4, "capability"    # I

    .line 166
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 167
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 144
    const-string v0, "DC-"

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->TAG:Ljava/lang/String;

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    .line 149
    iput-object p0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mConn:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 154
    const-string v0, "DefaultState"

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mPdnSatate:Ljava/lang/String;

    .line 155
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DefaultState;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;Lcom/mediatek/ims/internal/ImsDataSynchronizer$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DefaultState;

    .line 156
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;Lcom/mediatek/ims/internal/ImsDataSynchronizer$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;

    .line 157
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;Lcom/mediatek/ims/internal/ImsDataSynchronizer$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mActivatingState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;

    .line 158
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActiveState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActiveState;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;Lcom/mediatek/ims/internal/ImsDataSynchronizer$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mActiveState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActiveState;

    .line 159
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DisconnectingState;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;Lcom/mediatek/ims/internal/ImsDataSynchronizer$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mDisconnectingState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DisconnectingState;

    .line 168
    iput p4, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mCapability:I

    .line 169
    nop

    .line 170
    invoke-static {p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$500(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 172
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mAvailableListener:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;

    .line 173
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkLostCallback;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkLostCallback;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mLostListener:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkLostCallback;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DefaultState;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->addState(Lcom/android/internal/util/State;)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 177
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mActivatingState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mActiveState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActiveState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mDisconnectingState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DisconnectingState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 180
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 181
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->start()V

    .line 182
    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->confirmRequestNetworkToMd(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 142
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mActivatingState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 142
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mActiveState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActiveState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 142
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 142
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->releaseNetwork()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
    .param p1, "x1"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->confirmReleaseNetworkToMd(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 142
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mConn:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 142
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 142
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mDisconnectingState:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$DisconnectingState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 142
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mPdnSatate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 142
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->refreshNetworkLostListener()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
    .param p1, "x1"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->msgToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 142
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->requestNetwork()Z

    move-result v0

    return v0
.end method

.method private confirmReleaseNetworkToMd(I)V
    .locals 8
    .param p1, "reqId"    # I

    .line 498
    const-string v0, "confirmReleaseNetworkToMd"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;

    .line 500
    .local v0, "n":Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found Req: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 504
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getRequest()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 505
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$2200(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Lcom/mediatek/ims/internal/ImsDataTracker;

    move-result-object v2

    .line 506
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getRequest()I

    move-result v3

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getAid()I

    move-result v4

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getAction()I

    move-result v5

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$2100(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I

    move-result v7

    .line 505
    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/ims/internal/ImsDataTracker;->responseBearerConfirm(IIIII)V

    .line 508
    :cond_1
    return-void
.end method

.method private confirmRequestNetworkToMd(II)V
    .locals 8
    .param p1, "reqId"    # I
    .param p2, "status"    # I

    .line 475
    const-string v0, "confirmRequestNetworkToMd"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;

    .line 477
    .local v0, "n":Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found Req: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 481
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getRequest()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 482
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$2200(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Lcom/mediatek/ims/internal/ImsDataTracker;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getRequest()I

    move-result v3

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getAid()I

    move-result v4

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getAction()I

    move-result v5

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$2100(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I

    move-result v7

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/ims/internal/ImsDataTracker;->responseBearerConfirm(IIIII)V

    .line 484
    :cond_1
    return-void
.end method

.method private msgToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # I

    .line 570
    packed-switch p1, :pswitch_data_0

    .line 583
    const-string v0, "<unknown request>"

    return-object v0

    .line 582
    :pswitch_0
    const-string v0, "EVENT_MD_RESTART"

    return-object v0

    .line 580
    :pswitch_1
    const-string v0, "EVENT_SUBSCRIPTIONS_CHANGED"

    return-object v0

    .line 578
    :pswitch_2
    const-string v0, "EVENT_DISCONNECT_DONE"

    return-object v0

    .line 576
    :pswitch_3
    const-string v0, "EVENT_DISCONNECT"

    return-object v0

    .line 574
    :pswitch_4
    const-string v0, "EVENT_CONNECT_DONE"

    return-object v0

    .line 572
    :pswitch_5
    const-string v0, "EVENT_CONNECT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshNetworkLostListener()V
    .locals 6

    .line 445
    const-string v0, "refreshNetworkLostListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mPdnSatate:Ljava/lang/String;

    const-string v1, "ActivatingState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mPdnSatate:Ljava/lang/String;

    .line 448
    const-string v1, "ActiveState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mPdnSatate:Ljava/lang/String;

    .line 449
    const-string v1, "DisconnectingState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 455
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mLostListener:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkLostCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "cb already has been released!!"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->loge(Ljava/lang/String;)V

    .line 460
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 461
    .local v0, "token":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshNetworkLostListener, uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 462
    invoke-static {v3}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$500(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 464
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 465
    .local v2, "builder":Landroid/net/NetworkRequest$Builder;
    iget v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mCapability:I

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 466
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 467
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v3}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$2000(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 468
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 469
    .local v3, "nwRequest":Landroid/net/NetworkRequest;
    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mLostListener:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkLostCallback;

    invoke-virtual {v4, v3, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 471
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    return-void

    .line 450
    .end local v0    # "token":J
    .end local v2    # "builder":Landroid/net/NetworkRequest$Builder;
    .end local v3    # "nwRequest":Landroid/net/NetworkRequest;
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inValid state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mPdnSatate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->loge(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method private releaseNetwork()V
    .locals 2

    .line 487
    const-string v0, "releaseNetwork"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mAvailableListener:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 491
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mAvailableListener:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;->setNetworkCallbackRegistered(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "cb already has been released!!"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->loge(Ljava/lang/String;)V

    .line 495
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method private requestNetwork()Z
    .locals 6

    .line 416
    const-string v0, "requestNetwork"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$2000(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 419
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mCapability:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inValid subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$2000(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->loge(Ljava/lang/String;)V

    .line 421
    return v1

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;

    .line 426
    .local v0, "n":Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;
    if-nez v0, :cond_1

    .line 427
    const-string v2, "ImsBearerRequest is NULL"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->loge(Ljava/lang/String;)V

    .line 428
    return v1

    .line 431
    :cond_1
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 432
    .local v2, "builder":Landroid/net/NetworkRequest$Builder;
    iget v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mCapability:I

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 433
    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 434
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$2000(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 435
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 437
    .local v1, "nwRequest":Landroid/net/NetworkRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start requestNetwork for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 438
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mAvailableListener:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;->setNetworkCallbackRegistered(Z)V

    .line 439
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mAvailableListener:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;

    invoke-virtual {v3, v1, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 441
    return v4
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 520
    const-string v0, "clear"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 522
    return-void
.end method

.method public logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$2100(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mPdnSatate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$2100(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mPdnSatate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$2100(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mPdnSatate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 2

    .line 560
    const-string v0, "onSubscriptionsChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 561
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->refreshNetworkLostListener()V

    .line 562
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;

    .line 563
    .local v0, "n":Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;
    if-eqz v0, :cond_0

    .line 564
    const/4 v1, 0x4

    .line 565
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 564
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 567
    :cond_0
    return-void
.end method

.method public putRequest(Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;

    .line 511
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getRequest()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;

    .line 512
    .local v0, "n":Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;
    if-nez v0, :cond_0

    .line 513
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getRequest()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 515
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request already exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->loge(Ljava/lang/String;)V

    .line 517
    :goto_0
    return-void
.end method
