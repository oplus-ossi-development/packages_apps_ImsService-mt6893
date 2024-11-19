.class public Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;
.super Lcom/mediatek/ims/rcsua/AcsEventCallback;
.source "MtkImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/MtkImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RcsEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 166
    iput-object p1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/AcsEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcsConnected()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    const-string v1, "onAcsConnected"

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$000(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public onAcsDisconnected()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    const-string v1, "onAcsDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$000(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onConfigurationErrorReceived(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationErrorReceived errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->notifyAutoConfigurationErrorReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationErrorReceived error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onConfigurationStatusChanged(ZI)V
    .locals 6
    .param p1, "valid"    # Z
    .param p2, "version"    # I

    .line 169
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationStatusChanged: valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$000(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v0, p1, p2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$100(Lcom/mediatek/ims/config/MtkImsConfigImpl;ZI)V

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "needDeactivate":Z
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v2

    const-string v3, "ACS_VALIDITY"

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "validity":Ljava/lang/String;
    if-ne p2, v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    .line 178
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->deactivate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    const/4 v0, 0x1

    .line 182
    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCapabilities exception!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsConfig;->notifyRcsAutoConfigurationRemoved()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 187
    goto :goto_1

    .line 185
    :catch_1
    move-exception v1

    .line 186
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyRcsAutoConfigurationRemoved exception!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 191
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "validity":Ljava/lang/String;
    :cond_0
    :goto_1
    goto :goto_2

    .line 189
    :catch_2
    move-exception v1

    .line 190
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationStatusChanged exception! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    if-nez v0, :cond_3

    .line 196
    :try_start_5
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->activate()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 199
    :cond_2
    goto :goto_3

    .line 197
    :catch_3
    move-exception v1

    .line 198
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uaservice activate exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void
.end method
