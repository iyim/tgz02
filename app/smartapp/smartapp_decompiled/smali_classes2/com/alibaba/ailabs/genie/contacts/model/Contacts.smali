.class public Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;
.source "Contacts.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE:I = 0x1

.field public static final FRIEND:I


# instance fields
.field private avatar:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "icon"
    .end annotation
.end field

.field private features:Lcom/alibaba/ailabs/genie/contacts/model/Features;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "features"
    .end annotation
.end field

.field private isFamilyMember:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "familyFlag"
    .end annotation
.end field

.field private isFriend:Z

.field private isGenieUserFlag:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "genieUserFlag"
    .end annotation
.end field

.field private isInBlacklists:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "preventCallFlag"
    .end annotation
.end field

.field private isSelf:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "selfFlag"
    .end annotation
.end field

.field private mobile:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mobile"
    .end annotation
.end field

.field private newImportFlag:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "newImportFlag"
    .end annotation
.end field

.field private nickName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "contactNick"
    .end annotation
.end field

.field private outUserId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "outUserId"
    .end annotation
.end field

.field private ownerUserId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ownerUserId"
    .end annotation
.end field

.field private relationCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "relationCode"
    .end annotation
.end field

.field private relationName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "relationName"
    .end annotation
.end field

.field private sortTag:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sortTag"
    .end annotation
.end field

.field private taobaoUserId:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "taobaoUserId"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "contactId"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;-><init>()V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFriend:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;-><init>()V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFriend:Z

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->userId:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->mobile:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFamilyMember:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isInBlacklists:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isGenieUserFlag:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFriend:Z

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->nickName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->avatar:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->relationCode:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->relationName:Ljava/lang/String;

    .line 147
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/model/Features;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/Features;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->features:Lcom/alibaba/ailabs/genie/contacts/model/Features;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;-><init>()V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFriend:Z

    .line 130
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->avatar:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->nickName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->mobile:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;->getRelationship()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->relationName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->features:Lcom/alibaba/ailabs/genie/contacts/model/Features;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutUserId()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->outUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerUserId()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->ownerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationCode()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->relationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationName()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->relationName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaobaoUserId()Ljava/lang/Long;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->taobaoUserId:Ljava/lang/Long;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isFamilyMember()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFamilyMember:Z

    return v0
.end method

.method public isFriend()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFriend:Z

    return v0
.end method

.method public isGenieUser()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isGenieUserFlag:Z

    return v0
.end method

.method public isInBlacklists()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isInBlacklists:Z

    return v0
.end method

.method public isNewImport()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->newImportFlag:Z

    return v0
.end method

.method public isSelf()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isSelf:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setFamilyMember(Z)V
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFamilyMember:Z

    return-void
.end method

.method public setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->features:Lcom/alibaba/ailabs/genie/contacts/model/Features;

    return-void
.end method

.method public setFriend(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFriend:Z

    return-void
.end method

.method public setGenieUserFlag(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isGenieUserFlag:Z

    return-void
.end method

.method public setInBlacklists(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isInBlacklists:Z

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setNewImportFlag(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->newImportFlag:Z

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOutUserId(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->outUserId:Ljava/lang/String;

    return-void
.end method

.method public setOwnerUserId(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->ownerUserId:Ljava/lang/String;

    return-void
.end method

.method public setRelationCode(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->relationCode:Ljava/lang/String;

    return-void
.end method

.method public setRelationName(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->relationName:Ljava/lang/String;

    return-void
.end method

.method public setSelfFlag(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isSelf:Z

    return-void
.end method

.method public setTaobaoUserId(Ljava/lang/Long;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->taobaoUserId:Ljava/lang/Long;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->userId:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 337
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contacts{userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ownerUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->ownerUserId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", relationCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->relationCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", relationName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->relationName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nickName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", outUserId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->outUserId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", avatar=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mobile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", taobaoUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->taobaoUserId:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isFamilyMember="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFamilyMember:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isInBlacklists="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isInBlacklists:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isGenieUserFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isGenieUserFlag:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFriend="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFriend:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sortTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->sortTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->features:Lcom/alibaba/ailabs/genie/contacts/model/Features;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->mobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFamilyMember:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 326
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isInBlacklists:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 327
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isGenieUserFlag:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 328
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFriend:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 329
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->relationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->relationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->features:Lcom/alibaba/ailabs/genie/contacts/model/Features;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
