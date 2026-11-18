.class Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;
.super Ljava/lang/Object;
.source "ContactRepository.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->fetchData(IZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

.field final synthetic val$contactsWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;JLcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->val$startTime:J

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->val$contactsWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "questContacts msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_records"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->val$contactsWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->setErrCode(Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->val$contactsWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->setErrmsg(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->mContacts:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->val$contactsWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TestApple"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "questContactsTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->val$startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_contacts"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->val$contactsWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->setDataChange(Z)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->val$contactsWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->model:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->setList(Ljava/util/List;)V

    .line 165
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->mContacts:Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->val$contactsWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "read contacts network data finish="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$3;->val$contactsWrapper:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
