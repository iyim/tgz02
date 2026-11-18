.class public Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;
.super Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;
.source "VCallListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_select"


# instance fields
.field private mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initComponent()V
    .locals 2

    .line 65
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;

    .line 66
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->setLayoutMargin()V

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;->setDataList(Ljava/util/List;)V

    .line 68
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 69
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;->recyclerview:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;->recyclerview:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/-$$Lambda$VCallListActivity$3oysm9VnJyiZh8UTj0kLZDDXYSM;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/-$$Lambda$VCallListActivity$3oysm9VnJyiZh8UTj0kLZDDXYSM;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;->setOnItemClickListener(Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter$OnItemClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;->navBar:Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/widget/GenieTabNavBar;->setHostActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private openIndex(I)V
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openIndex.index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_select"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_5

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->getRetMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->getRetValue()Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 99
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->getContact()Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    move-result-object v0

    const/4 v1, 0x0

    .line 101
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isCMCC()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VIDEO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 104
    :cond_3
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isUniComCustom()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callCuVOIP(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_4
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Z)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->finish()V

    :cond_5
    :goto_1
    return-void
.end method

.method private setLayoutMargin()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;->recyclerview:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 82
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x5b

    add-int/lit8 v1, v1, 0x54

    const/16 v0, 0x49

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 3

    .line 128
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V

    const-string v0, "contacts_select"

    const-string v1, "getAppContextData"

    .line 129
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    .line 131
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    .line 133
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "totalNum"

    .line 134
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->size(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fromType"

    const-string v2, "CHAT"

    .line 135
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initComponent$27$VCallListActivity(Ljava/lang/Object;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->openIndex(I)V

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->initComponent()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commandDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", command = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", commandParams = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bundle = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "contacts_select"

    invoke-static {p4, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "/Open"

    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    const-string p1, "/PlayIndex"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    :cond_0
    invoke-static {p3}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/OpenCmd;->fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/OpenCmd;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p4

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/OpenCmd;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->openIndex(I)V

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->finish()V

    :cond_2
    return-object p4
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->setLayoutMargin()V

    .line 47
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;->setDataList(Ljava/util/List;)V

    return-void
.end method

.method protected resolveIntent(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "content"

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallList;->fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallList;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallList;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mList:Ljava/util/List;

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
