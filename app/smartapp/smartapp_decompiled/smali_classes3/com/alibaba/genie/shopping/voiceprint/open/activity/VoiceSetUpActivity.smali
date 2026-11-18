.class public Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "VoiceSetUpActivity.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;",
        "Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;",
        ">;",
        "Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mProgress:Landroid/widget/ProgressBar;

.field private mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

.field private soundPrintId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->soundPrintId:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;)Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;
    .locals 1

    .line 111
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;-><init>()V

    return-object v0
.end method

.method public getSoundPrintListFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 168
    iget-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string p2, "ANDROID_SYS_NETWORK_ERROR"

    .line 170
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string p2, "\u7f51\u7edc\u51fa\u4e86\u70b9\u95ee\u9898\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 171
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

    .line 143
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;->refreshData(Ljava/util/List;)V

    :try_start_0
    const-string v0, "content://com.android.settings.SettingsProvider.voiceprint/voiceprint_info"

    .line 150
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 153
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "voiceprint_count"

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x0

    .line 159
    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_voice_set_up:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->setContentView(I)V

    .line 42
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->progress:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 43
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->voice_list_recyclerView:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 45
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 46
    new-instance p1, Landroid/support/v7/widget/DividerItemDecoration;

    invoke-direct {p1, p0, v1}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->voiceprint_list_item_divider_bg:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 49
    new-instance p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

    .line 50
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

    invoke-virtual {p1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;->setOnItemClickListener(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$OnItemClickListener;)V

    .line 52
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 54
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->voice_list_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 55
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->voicesetup_save:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$1;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onIsOpen(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onItemDel(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;I)V
    .locals 4

    .line 116
    new-instance v0, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;-><init>()V

    .line 117
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 118
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->setArguments(Landroid/os/Bundle;)V

    .line 120
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$2;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;ILcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->setonDeletedListener(Lcom/alibaba/genie/shopping/voiceprint/open/activity/onItemDeleteListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "del"

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 88
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    .line 89
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 75
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getSoundPrintList(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :try_start_0
    const-string v0, "a1z3lt.12021538"

    const-string v1, "systemsetting_voiceprint"

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    .line 100
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    return-object p1
.end method

.method public saveData(J)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->removeSoundPrintById(Ljava/lang/String;J)V

    return-void
.end method
