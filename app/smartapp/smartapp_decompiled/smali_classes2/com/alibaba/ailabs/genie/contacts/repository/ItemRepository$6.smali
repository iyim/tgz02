.class Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;
.super Ljava/lang/Object;
.source "ItemRepository.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->getContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

.field final synthetic val$contactsData:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;JLcom/alibaba/ailabs/genie/contacts/item/ContactsData;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->val$startTime:J

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->val$contactsData:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContacts msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_ItemRepository"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->val$contactsData:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->setErrCode(Ljava/lang/String;)V

    .line 317
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->val$contactsData:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->setErrmsg(Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveContacts:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->val$contactsData:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;",
            ">;)V"
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "questContactsTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->val$startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_ItemRepository"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$400(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 296
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$302(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Z)Z

    .line 297
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getDataHash()I

    move-result v0

    const/4 v4, 0x2

    .line 298
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object v5, v5, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveContacts:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->getDataHash()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "contacts.hash old[%d], new[%d]"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveContacts:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-virtual {v4, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->isDataChanged(I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string p1, "contacts not changed."

    .line 300
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->val$contactsData:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->setDataChange(Z)V

    .line 302
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveContacts:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->val$contactsData:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 305
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->val$contactsData:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->setDataChange(Z)V

    .line 306
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveContacts:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->setDataHash(I)V

    .line 307
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;->model:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 308
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->val$contactsData:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$700(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->setList(Ljava/util/List;)V

    .line 309
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->mLiveContacts:Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$6;->val$contactsData:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/data/HashLiveData;->postValue(Ljava/lang/Object;)V

    const-string p1, "read contacts network data finish"

    .line 310
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
