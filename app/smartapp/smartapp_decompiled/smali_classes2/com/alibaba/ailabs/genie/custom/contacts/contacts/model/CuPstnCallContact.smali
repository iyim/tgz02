.class public Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;
.super Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;
.source "CuPstnCallContact.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contactId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "contactId"
    .end annotation
.end field

.field private mobile:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mobile"
    .end annotation
.end field

.field private nickName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "nickname"
    .end annotation
.end field

.field private phoneNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->contactId:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->nickName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->mobile:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->phoneNum:Ljava/lang/String;

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;",
            ">;"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->contactId:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->contactId:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->phoneNum:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 47
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->contactId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->mobile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;->phoneNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
