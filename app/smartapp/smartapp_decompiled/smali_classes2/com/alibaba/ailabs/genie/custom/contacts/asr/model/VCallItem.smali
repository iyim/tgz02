.class public Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;
.super Ljava/lang/Object;
.source "VCallItem.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/proguard/IKeepFieldName;


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_select"


# instance fields
.field contactDeviceName:Ljava/lang/String;

.field contactExtUserId:Ljava/lang/String;

.field contactProductKey:Ljava/lang/String;

.field nickName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "nickname"
    .end annotation
.end field

.field phoneNum:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "phoneNum"
    .end annotation
.end field

.field targetType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "targetType"
    .end annotation
.end field

.field type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field

.field userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "contactId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getContact()Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;
    .locals 2

    .line 113
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactId(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->targetType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactType(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->contactProductKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactProductKey(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->contactDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactDeviceName(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->contactExtUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactExtUserId(Ljava/lang/String;)V

    return-object v0
.end method

.method public getContactDeviceName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->contactDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getContactExtUserId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->contactExtUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getContactProductKey()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->contactProductKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->targetType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->phoneNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setContactDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->contactDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setContactExtUserId(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->contactExtUserId:Ljava/lang/String;

    return-void
.end method

.method public setContactProductKey(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->contactProductKey:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->phoneNum:Ljava/lang/String;

    return-void
.end method

.method public setTargetType(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->targetType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->type:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
