.class Lcom/mediatek/ims/OplusImsServiceControllerExt$MyHandler;
.super Landroid/os/Handler;
.source "OplusImsServiceControllerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/OplusImsServiceControllerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/OplusImsServiceControllerExt;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/OplusImsServiceControllerExt;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt$MyHandler;->this$0:Lcom/mediatek/ims/OplusImsServiceControllerExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/OplusImsServiceControllerExt;Lcom/mediatek/ims/OplusImsServiceControllerExt$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/OplusImsServiceControllerExt;
    .param p2, "x1"    # Lcom/mediatek/ims/OplusImsServiceControllerExt$1;

    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/ims/OplusImsServiceControllerExt$MyHandler;-><init>(Lcom/mediatek/ims/OplusImsServiceControllerExt;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Event :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt$MyHandler;->this$0:Lcom/mediatek/ims/OplusImsServiceControllerExt;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/mediatek/ims/OplusImsServiceControllerExt;->access$100(Lcom/mediatek/ims/OplusImsServiceControllerExt;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusImsServiceControllerExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 81
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    .line 82
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 83
    .local v1, "phoneId":I
    const-string v2, ""

    .line 84
    .local v2, "remainTimeData":Ljava/lang/String;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 85
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 86
    .local v3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v4, "b":Ljava/lang/StringBuilder;
    const-string v5, "eregrtInfoInd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 89
    .local v6, "i":Ljava/lang/Integer;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .end local v6    # "i":Ljava/lang/Integer;
    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .end local v3    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "b":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt$MyHandler;->this$0:Lcom/mediatek/ims/OplusImsServiceControllerExt;

    invoke-static {v3}, Lcom/mediatek/ims/OplusImsServiceControllerExt;->access$200(Lcom/mediatek/ims/OplusImsServiceControllerExt;)Landroid/telephony/TelephonyRegistryManagerExt;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/mediatek/ims/OplusImsServiceControllerExt$MyHandler;->this$0:Lcom/mediatek/ims/OplusImsServiceControllerExt;

    invoke-static {v3}, Lcom/mediatek/ims/OplusImsServiceControllerExt;->access$200(Lcom/mediatek/ims/OplusImsServiceControllerExt;)Landroid/telephony/TelephonyRegistryManagerExt;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/telephony/TelephonyRegistryManagerExt;->notifyForRemainTimeReported(ILjava/lang/String;)V

    .line 101
    .end local v1    # "phoneId":I
    .end local v2    # "remainTimeData":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
