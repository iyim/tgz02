.class public Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "VoicePrintNickCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;",
        "Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private ivDelinput:Landroid/widget/ImageView;

.field private mInputNick:Ljava/lang/String;

.field private mNickInputEdit:Landroid/widget/EditText;

.field private mOkBtn:Landroid/widget/TextView;

.field private warn_imgs:Landroid/widget/ImageView;

.field private warn_imwords:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)Landroid/widget/EditText;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mNickInputEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->ivDelinput:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->warn_imwords:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)Z
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->canGoNext()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mInputNick:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mOkBtn:Landroid/widget/TextView;

    return-object p0
.end method

.method private canGoNext()Z
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mNickInputEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mInputNick:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mInputNick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mInputNick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mInputNick:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->ivDelinput:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->warn_imwords:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->warn_imwords:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_print_new_nick_chinese_error:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    return v1

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mInputNick:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->isExistsSoundPrint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->ivDelinput:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->warn_imwords:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->warn_imwords:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->va_add_sound_print_nick_exist_tip:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->ivDelinput:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->warn_imwords:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->warn_imwords:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_print_words_unlegeal:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    return v1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;
    .locals 1

    .line 204
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_voiceprint_nick_create:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->setContentView(I)V

    .line 43
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->va_add_sound_print_nick_input:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mNickInputEdit:Landroid/widget/EditText;

    .line 45
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mNickInputEdit:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 46
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mNickInputEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 48
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivDelinput:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->ivDelinput:Landroid/widget/ImageView;

    .line 50
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->warn_imwords:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->warn_imwords:Landroid/widget/TextView;

    .line 51
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->ivDelinput:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->warn_imwords:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->ivDelinput:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$1;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivLeftClose:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$2;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->btn_next:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mOkBtn:Landroid/widget/TextView;

    .line 73
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mOkBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 74
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mOkBtn:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$drawable;->whiteground_greyframe:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 75
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mOkBtn:Landroid/widget/TextView;

    const-string v1, "#4A5A78"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mOkBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$3;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mNickInputEdit:Landroid/widget/EditText;

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/InputMethodUtils;->showSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 110
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->mNickInputEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$4;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getSoundPrintList(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 150
    sget-object v1, Lcom/alibaba/genie/shopping/utils/ConstData;->KEY_VOICEPRINT_OPEN_COME_FROM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "voiceprint_open_from_channel"

    .line 152
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    sput v0, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    goto :goto_0

    .line 155
    :cond_0
    sget-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->VOICEPRINT_COME_FROM_SEARCH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 157
    sput p1, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    goto :goto_0

    .line 158
    :cond_1
    sget-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->VOICEPRINT_COME_FROM_PAY_PAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 160
    sput p1, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    :cond_2
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 228
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onResume()V
    .locals 3

    .line 215
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 218
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 219
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->addDefaultProperties(Ljava/util/Map;)V

    const-string v1, "a1z3lt.12055183"

    const-string v2, "zhuce-nicheng"

    .line 220
    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    .line 209
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    return-object p1
.end method
