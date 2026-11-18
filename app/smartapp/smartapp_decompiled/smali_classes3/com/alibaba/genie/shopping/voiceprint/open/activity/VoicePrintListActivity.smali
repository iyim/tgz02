.class public Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "VoicePrintListActivity.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;",
        "Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;",
        ">;",
        "Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mProgress:Landroid/widget/ProgressBar;

.field private mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

.field private pay_message:Ljava/lang/String;

.field private pay_status:I

.field private voice_add_img:Landroid/widget/TextView;

.field private voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;
    .locals 1

    .line 339
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;-><init>()V

    return-object v0
.end method

.method public getSoundPrintListFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 230
    iget-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string p2, "ANDROID_SYS_NETWORK_ERROR"

    .line 236
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string p2, "\u7f51\u7edc\u51fa\u4e86\u70b9\u95ee\u9898\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 237
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public getSoundPrintListSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;",
            ">;)V"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->refreshData(Ljava/util/List;)V

    :try_start_0
    const-string v0, "content://com.android.settings.SettingsProvider.voiceprint/voiceprint_info"

    .line 211
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 214
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "voiceprint_count"

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x0

    .line 220
    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isNeedHandler()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 291
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 297
    sget-object p1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->KEY_SOUND_INFO:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p2

    check-cast p2, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v0

    const-string p1, "true"

    invoke-virtual {p2, p3, v0, v1, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->openOrCloseVoicePrintPay(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "\u58f0\u7eb9\u4fe1\u606f\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 301
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 51
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_voiceprint_list:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->setContentView(I)V

    .line 60
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->iv_back:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$1;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->voice_add_img:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->voice_add_img:Landroid/widget/TextView;

    .line 67
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->voice_list_recyclerView:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 69
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->progress:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 72
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    new-instance p1, Landroid/support/v7/widget/DividerItemDecoration;

    invoke-direct {p1, p0, v1}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_list_item_divider_bg:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 76
    new-instance p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

    .line 77
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

    invoke-virtual {p1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->setOnItemClickListener(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$OnItemClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 81
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 82
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 115
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->voice_add_img:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$3;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->voice_setup:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$4;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getSoundPrintList(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->removeAllMessage()V

    .line 185
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onIsOpen(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 272
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    sget-object v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->KEY_SOUND_INFO:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->isPaySucc()Z

    move-result p1

    const-string v0, "only_verify_alipay_pwd"

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 276
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x65

    .line 277
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 280
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p2

    check-cast p2, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v1

    const-string p1, "false"

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->openOrCloseVoicePrintPay(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onItemDel(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;I)V
    .locals 11

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getName()Ljava/lang/String;

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_del_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_del_dialog_content:I

    sget v5, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_del_str:I

    sget v6, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_cancel_str:I

    new-instance v7, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$5;

    invoke-direct {v7, p0, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$5;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcom/alibaba/genie/shopping/utils/DialogUtils;->showCommonMessageDialog(Landroid/app/Activity;Ljava/lang/String;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILcom/alibaba/genie/shopping/utils/DialogUtils$OnBindContentView;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    return-void
.end method

.method public onOpenOrCloseSoundPrintPay(Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPause()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    const-string v0, "VoicePrintList"

    const-string v1, "onpause"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 145
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getSoundPrintList(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "guide"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    sput v0, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :try_start_1
    const-string v0, "a1z3lt.12021538"

    const-string v1, "systemsetting_voiceprint"

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    .line 328
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    return-object p1
.end method
