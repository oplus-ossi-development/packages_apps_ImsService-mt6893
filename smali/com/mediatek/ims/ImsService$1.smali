.class Lcom/mediatek/ims/ImsService$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;

    .line 477
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 479
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive] action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.ims.ACTION_IMS_SIMULATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v6, "registry"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v0, v6}, Lcom/mediatek/ims/ImsService;->access$202(Lcom/mediatek/ims/ImsService;Z)Z

    .line 484
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Simulate IMS Registration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$200(Lcom/mediatek/ims/ImsService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/mediatek/ims/ImsService;->access$300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 486
    .local v0, "phoneId":I
    new-array v1, v1, [I

    .line 487
    iget-object v6, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$200(Lcom/mediatek/ims/ImsService;)Z

    move-result v6

    aput v6, v1, v4

    const/16 v4, 0xf

    aput v4, v1, v5

    aput v0, v1, v2

    .line 490
    .local v1, "result":[I
    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 491
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    .line 492
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 491
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 493
    .end local v0    # "phoneId":I
    .end local v1    # "result":[I
    .end local v2    # "ar":Landroid/os/AsyncResult;
    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$500(Lcom/mediatek/ims/ImsService;)V

    .line 497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$600(Lcom/mediatek/ims/ImsService;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 498
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    aget v1, v1, v0

    if-ne v1, v5, :cond_1

    .line 499
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v1, "newIntent":Landroid/content/Intent;
    const-string v2, "android:phone_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 502
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast IMS_SERVICE_UP for phone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 497
    .end local v1    # "newIntent":Landroid/content/Intent;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    goto/16 :goto_3

    .line 505
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_5

    .line 506
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "simStatus":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 508
    const-string v1, "phone"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 510
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$900(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 511
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;I)V

    .line 514
    .end local v0    # "simStatus":Ljava/lang/String;
    .end local v1    # "phoneId":I
    :cond_4
    goto/16 :goto_3

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 516
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 517
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "slot"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 518
    .local v1, "slotId":I
    if-eqz v0, :cond_a

    .line 519
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 520
    .local v2, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    .line 521
    .local v3, "dataState":I
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v4

    .line 522
    .local v4, "dataNetType":I
    iget-object v6, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_SERVICE_STATE_CHANGED: slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ims="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    .line 523
    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 522
    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 524
    iget-object v6, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    aget v6, v6, v1

    if-nez v6, :cond_a

    .line 525
    if-nez v3, :cond_8

    .line 526
    const/16 v6, 0xd

    if-eq v4, v6, :cond_7

    const/16 v6, 0x13

    if-eq v4, v6, :cond_7

    const/16 v6, 0x14

    if-eq v4, v6, :cond_7

    const/16 v6, 0x12

    if-ne v4, v6, :cond_6

    goto :goto_1

    .line 532
    :cond_6
    iget-object v6, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6, v1, v5}, Lcom/mediatek/ims/ImsService;->access$1200(Lcom/mediatek/ims/ImsService;II)V

    goto/16 :goto_2

    .line 530
    :cond_7
    :goto_1
    iget-object v5, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    aget v6, v6, v1

    invoke-static {v5, v1, v6}, Lcom/mediatek/ims/ImsService;->access$1200(Lcom/mediatek/ims/ImsService;II)V

    goto/16 :goto_2

    .line 535
    :cond_8
    iget-object v6, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6, v1, v5}, Lcom/mediatek/ims/ImsService;->access$1200(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_2

    .line 540
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "slotId":I
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    .end local v3    # "dataState":I
    .end local v4    # "dataNetType":I
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "com.mediatek.ims.MTK_RCS_REG_STATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 541
    const-string v0, "android:phoneId"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 542
    .local v0, "phoneId":I
    const-string v7, "android:state"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 543
    .local v6, "state":I
    iget-object v7, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onReceive] ACTION_RCS_REGISTER_CHANGED phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 544
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 545
    iget-object v7, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$1300(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v7

    aput v6, v7, v0

    .line 546
    new-array v1, v1, [I

    aput v2, v1, v4

    iget-object v4, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    .line 548
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    aget v4, v4, v0

    aput v4, v1, v5

    aput v0, v1, v2

    .line 550
    .local v1, "result":[I
    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 551
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    .line 552
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 551
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 540
    .end local v0    # "phoneId":I
    .end local v1    # "result":[I
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "state":I
    :cond_a
    :goto_2
    nop

    .line 556
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive] finished action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 557
    return-void
.end method
