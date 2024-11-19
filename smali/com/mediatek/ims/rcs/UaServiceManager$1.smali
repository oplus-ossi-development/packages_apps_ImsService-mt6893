.class Lcom/mediatek/ims/rcs/UaServiceManager$1;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;->registerStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

.field final synthetic val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 133
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iput-object p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegState()I

    move-result v0

    .line 137
    .local v0, "regState":I
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v1

    .line 138
    .local v1, "regMode":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onDeregistering(I)V

    .line 147
    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onRegistered(I)V

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onRegistering(I)V

    .line 144
    goto :goto_0

    .line 140
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onDeregistered(I)V

    .line 141
    nop

    .line 152
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
