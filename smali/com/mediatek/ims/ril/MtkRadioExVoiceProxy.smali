.class public Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
.super Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
.source "MtkRadioExVoiceProxy.java"


# instance fields
.field private volatile mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    .line 66
    return-void
.end method

.method public getAidl()Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    return-object v0
.end method

.method public getColp(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->getColp(II)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 126
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getColp(I)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 129
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getColp(I)V

    .line 131
    :goto_0
    return-void
.end method

.method public getColr(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->getColr(II)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 145
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getColr(I)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 148
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getColr(I)V

    .line 150
    :goto_0
    return-void
.end method

.method public hangupAll(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->hangupAll(II)V

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 404
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->hangupAll(I)V

    goto :goto_0

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 407
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->hangupAll(I)V

    .line 409
    :goto_0
    return-void
.end method

.method public hangupWithReason(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->hangupWithReason(IIII)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 361
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->hangupWithReason(III)V

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 364
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->hangupWithReason(III)V

    .line 366
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queryCallForwardInTimeSlotStatus(III)V
    .locals 6
    .param p1, "serial"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const-string v0, ""

    .line 163
    .local v0, "number":Ljava/lang/String;
    const-string v1, ""

    .line 164
    .local v1, "timeSlotBegin":Ljava/lang/String;
    const-string v2, ""

    .line 166
    .local v2, "timeSlotEnd":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 168
    new-instance v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;

    invoke-direct {v3}, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;-><init>()V

    .line 170
    .local v3, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    iput p2, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->reason:I

    .line 171
    iput p3, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->serviceClass:I

    .line 172
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->toa:I

    .line 173
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 174
    iput v4, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSeconds:I

    .line 175
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 176
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 178
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v5, 0x1

    invoke-interface {v4, p1, v3, v5}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;I)V

    .line 180
    .end local v3    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    new-instance v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    invoke-direct {v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;-><init>()V

    .line 183
    .local v3, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    iput p2, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->reason:I

    .line 184
    iput p3, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->serviceClass:I

    .line 185
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->toa:I

    .line 186
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 187
    iput v4, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSeconds:I

    .line 188
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 189
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 191
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 192
    invoke-interface {v4, p1, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;)V

    .line 193
    .end local v3    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    goto :goto_0

    .line 194
    :cond_2
    new-instance v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 196
    .local v3, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    iput p2, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->reason:I

    .line 197
    iput p3, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->serviceClass:I

    .line 198
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->toa:I

    .line 199
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 200
    iput v4, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSeconds:I

    .line 201
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 202
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 204
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 205
    invoke-interface {v4, p1, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V

    .line 207
    .end local v3    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :goto_0
    return-void
.end method

.method public resetSuppServ(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->resetSuppServ(II)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 107
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->resetSuppServ(I)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 110
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->resetSuppServ(I)V

    .line 112
    :goto_0
    return-void
.end method

.method public responseAcknowledgementMtk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 88
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 91
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    .line 93
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;)V
    .locals 1
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "voice"    # Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    .line 46
    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 47
    iput-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mIsAidl:Z

    .line 49
    return-void
.end method

.method public setCallForwardInTimeSlot(IIIILjava/lang/String;I[J)V
    .locals 6
    .param p1, "serial"    # I
    .param p2, "action"    # I
    .param p3, "cfReason"    # I
    .param p4, "serviceClass"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "timeSeconds"    # I
    .param p7, "timeSlot"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    const-string v0, ""

    .line 224
    .local v0, "timeSlotBegin":Ljava/lang/String;
    const-string v1, ""

    .line 227
    .local v1, "timeSlotEnd":Ljava/lang/String;
    if-eqz p7, :cond_1

    array-length v2, p7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 228
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p7

    if-ge v2, v3, :cond_1

    .line 229
    new-instance v3, Ljava/util/Date;

    aget-wide v4, p7, v2

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 230
    .local v3, "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 231
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 233
    if-nez v2, :cond_0

    .line 234
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 236
    :cond_0
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;-><init>()V

    .line 245
    .local v2, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    iput p2, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->status:I

    .line 246
    iput p3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->reason:I

    .line 247
    iput p4, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->serviceClass:I

    .line 248
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->toa:I

    .line 249
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 250
    iput p6, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSeconds:I

    .line 251
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 252
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 254
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v2, v4}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;I)V

    .line 256
    .end local v2    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 257
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;-><init>()V

    .line 259
    .local v2, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    iput p2, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->status:I

    .line 260
    iput p3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->reason:I

    .line 261
    iput p4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->serviceClass:I

    .line 262
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->toa:I

    .line 263
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 264
    iput p6, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSeconds:I

    .line 265
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 266
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 268
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 269
    invoke-interface {v3, p1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;)V

    .line 270
    .end local v2    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    goto :goto_2

    .line 271
    :cond_4
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 273
    .local v2, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    iput p2, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->status:I

    .line 274
    iput p3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->reason:I

    .line 275
    iput p4, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->serviceClass:I

    .line 276
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->toa:I

    .line 277
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 278
    iput p6, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSeconds:I

    .line 279
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 280
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 282
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 283
    invoke-interface {v3, p1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V

    .line 285
    .end local v2    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :goto_2
    return-void
.end method

.method public setCallIndication(IIIII)V
    .locals 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "callId"    # I
    .param p4, "seqNumber"    # I
    .param p5, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setCallIndication(IIIIII)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 386
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setCallIndication(IIIII)V

    goto :goto_0

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 389
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallIndication(IIIII)V

    .line 391
    :goto_0
    return-void
.end method

.method public setClip(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setClip(III)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 300
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setClip(II)V

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 303
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setClip(II)V

    .line 305
    :goto_0
    return-void
.end method

.method public setColp(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setColp(III)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 320
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setColp(II)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 323
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setColp(II)V

    .line 325
    :goto_0
    return-void
.end method

.method public setColr(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setColr(III)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 340
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setColr(II)V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 343
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setColr(II)V

    .line 345
    :goto_0
    return-void
.end method
