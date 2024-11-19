.class public Lcom/mediatek/ims/ril/RadioVoiceProxy;
.super Lcom/mediatek/ims/ril/RadioServiceProxy;
.source "RadioVoiceProxy.java"


# instance fields
.field private volatile mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    return-void
.end method

.method static synthetic lambda$emergencyDial$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 139
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->acceptCall(I)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->acceptCall(I)V

    .line 86
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    .line 63
    return-void
.end method

.method public conference(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->conference(I)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->conference(I)V

    .line 100
    :goto_0
    return-void
.end method

.method public dial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/voice/IRadioVoice;->dial(ILandroid/hardware/radio/voice/Dial;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 118
    :goto_0
    return-void
.end method

.method public emergencyDial(ILjava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 9
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callprofile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p4, "clirMode"    # I
    .param p5, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    .line 136
    invoke-static {p2, p4, p5}, Lcom/android/internal/telephony/RILUtils;->convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;

    move-result-object v3

    .line 137
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v4

    .line 138
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/mediatek/ims/ril/RadioVoiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    move-object v5, v0

    .line 141
    :goto_0
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v6

    const/4 v7, 0x0

    .line 144
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v8

    .line 135
    move v2, p1

    invoke-interface/range {v1 .. v8}, Landroid/hardware/radio/voice/IRadioVoice;->emergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZ)V

    goto/16 :goto_3

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/V1_6/IRadio;

    .line 147
    invoke-static {p2, p4, p5}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v3

    .line 148
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v4

    .line 149
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    goto :goto_1

    .line 151
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 152
    :goto_1
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v6

    const/4 v7, 0x0

    .line 155
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v8

    .line 146
    move v2, p1

    invoke-interface/range {v1 .. v8}, Landroid/hardware/radio/V1_6/IRadio;->emergencyDial_1_6(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    goto :goto_3

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/V1_4/IRadio;

    .line 159
    invoke-static {p2, p4, p5}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v3

    .line 160
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v4

    .line 161
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    goto :goto_2

    .line 163
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 164
    :goto_2
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v6

    const/4 v7, 0x0

    .line 167
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v8

    .line 158
    move v2, p1

    invoke-interface/range {v1 .. v8}, Landroid/hardware/radio/V1_4/IRadio;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 169
    :goto_3
    return-void

    .line 133
    :cond_6
    :goto_4
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->exitEmergencyCallbackMode(I)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->exitEmergencyCallbackMode(I)V

    .line 183
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->explicitCallTransfer(I)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->explicitCallTransfer(I)V

    .line 197
    :goto_0
    return-void
.end method

.method public getAidl()Landroid/hardware/radio/voice/IRadioVoice;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    return-object v0
.end method

.method public getCallForwardStatus(IIILjava/lang/String;)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 211
    new-instance v0, Landroid/hardware/radio/voice/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/voice/CallForwardInfo;-><init>()V

    .line 213
    .local v0, "cfInfo":Landroid/hardware/radio/voice/CallForwardInfo;
    iput p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->reason:I

    .line 214
    iput p3, v0, Landroid/hardware/radio/voice/CallForwardInfo;->serviceClass:I

    .line 215
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->toa:I

    .line 216
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->number:Ljava/lang/String;

    .line 217
    iput v1, v0, Landroid/hardware/radio/voice/CallForwardInfo;->timeSeconds:I

    .line 218
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v1, p1, v0}, Landroid/hardware/radio/voice/IRadioVoice;->getCallForwardStatus(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    .line 219
    .end local v0    # "cfInfo":Landroid/hardware/radio/voice/CallForwardInfo;
    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 222
    .local v0, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 223
    iput p3, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 224
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 225
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 226
    iput v1, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 227
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v1, p1, v0}, Landroid/hardware/radio/V1_0/IRadio;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 229
    .end local v0    # "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :goto_0
    return-void
.end method

.method public getCallWaiting(II)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->getCallWaiting(II)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->getCallWaiting(II)V

    .line 244
    :goto_0
    return-void
.end method

.method public getClip(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getClip(I)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getClip(I)V

    .line 258
    :goto_0
    return-void
.end method

.method public getClir(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getClir(I)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getClir(I)V

    .line 272
    :goto_0
    return-void
.end method

.method public getLastCallFailCause(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getLastCallFailCause(I)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getLastCallFailCause(I)V

    .line 286
    :goto_0
    return-void
.end method

.method public getPreferredVoicePrivacy(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getPreferredVoicePrivacy(I)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getPreferredVoicePrivacy(I)V

    .line 300
    :goto_0
    return-void
.end method

.method public getTtyMode(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getTtyMode(I)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getTTYMode(I)V

    .line 314
    :goto_0
    return-void
.end method

.method public hangup(II)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "gsmIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->hangup(II)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->hangup(II)V

    .line 329
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public responseAcknowledgement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0}, Landroid/hardware/radio/voice/IRadioVoice;->responseAcknowledgement()V

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    .line 355
    :goto_0
    return-void
.end method

.method public sendDtmf(ILjava/lang/String;)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->sendDtmf(ILjava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->sendDtmf(ILjava/lang/String;)V

    .line 370
    :goto_0
    return-void
.end method

.method public separateConnection(II)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "gsmIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->separateConnection(II)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->separateConnection(II)V

    .line 385
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/voice/IRadioVoice;)V
    .locals 1
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "voice"    # Landroid/hardware/radio/voice/IRadioVoice;

    .line 43
    iput-object p1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 44
    iput-object p2, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mIsAidl:Z

    .line 46
    return-void
.end method

.method public setCallForward(IIIILjava/lang/String;I)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "action"    # I
    .param p3, "cfReason"    # I
    .param p4, "serviceClass"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "timeSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    new-instance v0, Landroid/hardware/radio/voice/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/voice/CallForwardInfo;-><init>()V

    .line 403
    .local v0, "cfInfo":Landroid/hardware/radio/voice/CallForwardInfo;
    iput p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->status:I

    .line 404
    iput p3, v0, Landroid/hardware/radio/voice/CallForwardInfo;->reason:I

    .line 405
    iput p4, v0, Landroid/hardware/radio/voice/CallForwardInfo;->serviceClass:I

    .line 406
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/voice/CallForwardInfo;->toa:I

    .line 407
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/voice/CallForwardInfo;->number:Ljava/lang/String;

    .line 408
    iput p6, v0, Landroid/hardware/radio/voice/CallForwardInfo;->timeSeconds:I

    .line 409
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v1, p1, v0}, Landroid/hardware/radio/voice/IRadioVoice;->setCallForward(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    .line 410
    .end local v0    # "cfInfo":Landroid/hardware/radio/voice/CallForwardInfo;
    goto :goto_0

    .line 411
    :cond_1
    new-instance v0, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 413
    .local v0, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    .line 414
    iput p3, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 415
    iput p4, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 416
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 417
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 418
    iput p6, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 419
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v1, p1, v0}, Landroid/hardware/radio/V1_0/IRadio;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 421
    .end local v0    # "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :goto_0
    return-void
.end method

.method public setCallWaiting(IZI)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/radio/voice/IRadioVoice;->setCallWaiting(IZI)V

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->setCallWaiting(IZI)V

    .line 438
    :goto_0
    return-void
.end method

.method public setClir(II)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setClir(II)V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setClir(II)V

    .line 453
    :goto_0
    return-void
.end method

.method public setMute(IZ)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setMute(IZ)V

    goto :goto_0

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setMute(IZ)V

    .line 468
    :goto_0
    return-void
.end method

.method public startDtmf(ILjava/lang/String;)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->startDtmf(ILjava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->startDtmf(ILjava/lang/String;)V

    .line 496
    :goto_0
    return-void
.end method

.method public stopDtmf(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->stopDtmf(I)V

    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->stopDtmf(I)V

    .line 510
    :goto_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->switchWaitingOrHoldingAndActive(I)V

    goto :goto_0

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->switchWaitingOrHoldingAndActive(I)V

    .line 524
    :goto_0
    return-void
.end method
