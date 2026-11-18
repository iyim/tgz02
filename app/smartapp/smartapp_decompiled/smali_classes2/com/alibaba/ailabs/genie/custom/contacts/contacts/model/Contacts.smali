.class public Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "Contacts.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contactDeviceName:Ljava/lang/String;

.field private contactExtUserId:Ljava/lang/String;

.field private contactId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "contactId"
    .end annotation
.end field

.field private contactImg:Ljava/lang/String;

.field private contactNickname:Ljava/lang/String;

.field private contactPhoneNum:Ljava/lang/String;

.field private contactProductKey:Ljava/lang/String;

.field private contactType:Ljava/lang/String;

.field private mobile:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mobile"
    .end annotation
.end field

.field public model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;",
            ">;"
        }
    .end annotation
.end field

.field private nickName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "nickname"
    .end annotation
.end field

.field private phoneNum:Ljava/lang/String;

.field private supportPSTNCall:Z

.field private supportVoIPAudioCall:Z

.field private supportVoIPVideoCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    .line 59
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->model:Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactId:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->nickName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->mobile:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->phoneNum:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactType:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactExtUserId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactProductKey:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactDeviceName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactPhoneNum:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactNickname:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactImg:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->supportVoIPAudioCall:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->supportVoIPVideoCall:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->supportPSTNCall:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->mobile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactId:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->nickName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContactDeviceName()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getContactExtUserId()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactExtUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactId:Ljava/lang/String;

    return-object v0
.end method

.method public getContactImg()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactImg:Ljava/lang/String;

    return-object v0
.end method

.method public getContactNickname()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getContactPhoneNum()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getContactProductKey()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactProductKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContactType()Ljava/lang/String;
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactType:Ljava/lang/String;

    const-string v1, "USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CONTACTS"

    goto :goto_0

    :cond_0
    const-string v0, "DEVICE"

    :goto_0
    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactNickname:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->nickName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getRealContactType()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactType:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportPSTNCall()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->supportPSTNCall:Z

    return v0
.end method

.method public isSupportVoIPAudioCall()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->supportVoIPAudioCall:Z

    return v0
.end method

.method public isSupportVoIPVideoCall()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->supportVoIPVideoCall:Z

    return v0
.end method

.method public setContactDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setContactExtUserId(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactExtUserId:Ljava/lang/String;

    return-void
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactId:Ljava/lang/String;

    return-void
.end method

.method public setContactImg(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactImg:Ljava/lang/String;

    return-void
.end method

.method public setContactNickname(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactNickname:Ljava/lang/String;

    return-void
.end method

.method public setContactPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactPhoneNum:Ljava/lang/String;

    return-void
.end method

.method public setContactProductKey(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactProductKey:Ljava/lang/String;

    return-void
.end method

.method public setContactType(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactType:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 1

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 1

    .line 117
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->phoneNum:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->mobile:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSupportPSTNCall(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->supportPSTNCall:Z

    return-void
.end method

.method public setSupportVoIPAudioCall(Z)V
    .locals 0

    .line 285
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->supportVoIPAudioCall:Z

    return-void
.end method

.method public setSupportVoIPVideoCall(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->supportVoIPVideoCall:Z

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 157
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contacts{contactId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nickName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mobile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 139
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->model:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 140
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->mobile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->phoneNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactExtUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactProductKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactPhoneNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactNickname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->contactImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->supportVoIPAudioCall:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 152
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->supportVoIPVideoCall:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 153
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->supportPSTNCall:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
