.class public Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;
.super Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListActivity;
.source "VContactListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VCallListActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initComponent()V
    .locals 5

    .line 60
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 63
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;->recyclerview:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 64
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    rsub-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x5b

    add-int/lit8 v0, v0, 0x54

    const/16 v3, 0xaa

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;->setDataList(Ljava/util/List;)V

    .line 68
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 69
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;->recyclerview:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;->recyclerview:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;->layoutExit:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListActivity$3oEcnATiRqKNWG6oIyS6boQnTZo;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListActivity$3oEcnATiRqKNWG6oIyS6boQnTZo;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListActivity$bfsDdgxjdolErahfrvQB72XXoXA;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListActivity$bfsDdgxjdolErahfrvQB72XXoXA;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;->setOnItemClickListener(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$OnItemClickListener;)V

    return-void
.end method

.method private openIndex(I)V
    .locals 6

    .line 79
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openIndex.index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_4

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;

    if-nez p1, :cond_1

    return-void

    .line 87
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "contactId"

    const-string v4, "mode"

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 90
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v5, "userId"

    if-nez v2, :cond_3

    .line 93
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    .line 94
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->getContactId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 98
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->getContactId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 3

    .line 121
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListActivity;->getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V

    .line 122
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->TAG:Ljava/lang/String;

    const-string v1, "getAppContextData"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    .line 124
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    .line 126
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "totalNum"

    .line 127
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mList:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->size(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fromType"

    const-string v2, "CONTACT"

    .line 128
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initComponent$4$VContactListActivity(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initComponent$5$VContactListActivity(Ljava/lang/Object;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->openIndex(I)V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->initComponent()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 3

    .line 107
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commandDomain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", command = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", commandParams = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bundle = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "/Open"

    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    const-string p1, "/PlayIndex"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    :cond_0
    invoke-static {p3}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/OpenCmd;->fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/cmd/model/OpenCmd;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p4

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/OpenCmd;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->openIndex(I)V

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->finish()V

    :cond_2
    return-object p4
.end method

.method protected resolveIntent(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "content"

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactList;->fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactList;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactList;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mList:Ljava/util/List;

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListActivity;->mList:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
