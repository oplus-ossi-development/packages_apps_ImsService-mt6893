.class Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkSubscribeResponseCallback.java"

# interfaces
.implements Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 158
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 165
    const-string v0, "com.mediatek.ims.rcs.aidl.IMtkSubscribeResponseCallback"

    return-object v0
.end method

.method public onCommandError(II)V
    .locals 4
    .param p1, "userData"    # I
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcs.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v1, p0, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    nop

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    throw v1
.end method

.method public onNetworkRespHeader(IILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "code"    # I
    .param p3, "reasonPhrase"    # Ljava/lang/String;
    .param p4, "reasonHeaderCause"    # I
    .param p5, "reasonHeaderText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 198
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcs.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    nop

    .line 209
    return-void

    .line 207
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    throw v1
.end method

.method public onNetworkResponse(IILjava/lang/String;)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcs.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    nop

    .line 193
    return-void

    .line 191
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    throw v1
.end method

.method public onNotifyCapabilitiesUpdate(ILjava/util/List;)V
    .locals 5
    .param p1, "userData"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    .local p2, "pidfXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 214
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcs.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 217
    iget-object v1, p0, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    nop

    .line 222
    return-void

    .line 220
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    throw v1
.end method

.method public onResourceTerminated(ILjava/util/List;)V
    .locals 5
    .param p1, "userData"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactTerminatedReason;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    .local p2, "uriTerminatedReason":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 227
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcs.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 230
    iget-object v1, p0, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    nop

    .line 235
    return-void

    .line 233
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    throw v1
.end method

.method public onTerminated(ILjava/lang/String;J)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "retryAfterMilliseconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 240
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcs.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    iget-object v1, p0, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    nop

    .line 249
    return-void

    .line 247
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    throw v1
.end method
