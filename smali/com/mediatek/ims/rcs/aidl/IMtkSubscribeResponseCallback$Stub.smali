.class public abstract Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub;
.super Landroid/os/Binder;
.source "IMtkSubscribeResponseCallback.java"

# interfaces
.implements Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCommandError:I = 0x1

.field static final TRANSACTION_onNetworkRespHeader:I = 0x3

.field static final TRANSACTION_onNetworkResponse:I = 0x2

.field static final TRANSACTION_onNotifyCapabilitiesUpdate:I = 0x4

.field static final TRANSACTION_onResourceTerminated:I = 0x5

.field static final TRANSACTION_onTerminated:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "com.mediatek.ims.rcs.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    const-string v0, "com.mediatek.ims.rcs.aidl.IMtkSubscribeResponseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 63
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.mediatek.ims.rcs.aidl.IMtkSubscribeResponseCallback"

    .line 68
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 69
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 79
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 147
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 75
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return v10

    .line 137
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 142
    .local v2, "_arg2":J
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub;->onTerminated(ILjava/lang/String;J)V

    .line 143
    goto :goto_0

    .line 128
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/ims/RcsContactTerminatedReason;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 131
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub;->onResourceTerminated(ILjava/util/List;)V

    .line 132
    goto :goto_0

    .line 119
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 122
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub;->onNotifyCapabilitiesUpdate(ILjava/util/List;)V

    .line 123
    goto :goto_0

    .line 104
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 106
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 108
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 110
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 112
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 113
    .local v16, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub;->onNetworkRespHeader(IILjava/lang/String;ILjava/lang/String;)V

    .line 114
    goto :goto_0

    .line 93
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub;->onNetworkResponse(IILjava/lang/String;)V

    .line 99
    goto :goto_0

    .line 84
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub;->onCommandError(II)V

    .line 88
    nop

    .line 150
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
