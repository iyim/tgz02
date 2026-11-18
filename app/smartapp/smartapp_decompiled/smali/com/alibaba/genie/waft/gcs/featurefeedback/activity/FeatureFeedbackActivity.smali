.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;
.super Landroid/app/Activity;
.source "FeatureFeedbackActivity.java"


# static fields
.field public static final FEATURE_FEEDBACK_SUBMIT_TYPE_IGNORE:I = 0x1

.field public static final FEATURE_FEEDBACK_SUBMIT_TYPE_SUCCESS:I = 0x0

.field public static final FEATURE_FEEDBACK_SUBMIT_TYPE_TIME_OUT:I = 0x2

.field public static final INTENT_KEY_DATA:Ljava/lang/String; = "data"

.field private static final SCORE_DESC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCORE_NOT_SELECT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "FeatureFeedbackActivity"


# instance fields
.field private mCurrentAppraiseIndex:I

.field private mData:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

.field private mFeatureFeedbackClose:Landroid/widget/ImageView;

.field private mFeatureFeedbackContent:Landroid/widget/LinearLayout;

.field private mFeatureFeedbackNewVersionDesc:Landroid/widget/TextView;

.field private mFeatureFeedbackRoot:Landroid/widget/FrameLayout;

.field private mFeatureFeedbackSure:Landroid/support/v7/widget/CardView;

.field private mFeatureFeedbackTemplateAgain:Landroid/widget/LinearLayout;

.field private mFeatureFeedbackTemplateAgainAppraise:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

.field private mFeatureFeedbackTemplateAgainAppraiseDesc:Landroid/widget/TextView;

.field private mFeatureFeedbackTemplateAgainTags:Lcom/google/android/flexbox/FlexboxLayout;

.field private mFeatureFeedbackTemplateFirst:Landroid/widget/LinearLayout;

.field private mFeatureFeedbackTemplateFirstAppraise:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

.field private mFeatureFeedbackTitle:Landroid/widget/TextView;

.field private mSelectTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$1;

    invoke-direct {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$1;-><init>()V

    sput-object v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->SCORE_DESC:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mSelectTags:Ljava/util/Set;

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mCurrentAppraiseIndex:I

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mCurrentAppraiseIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateAgainAppraise:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateFirst:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateAgain:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateFirstAppraise:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->displayTags()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)Ljava/util/Set;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mSelectTags:Ljava/util/Set;

    return-object p0
.end method

.method private createTag(Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 2

    .line 194
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$layout;->activity_feature_feedback_tags_item:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 195
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 196
    new-instance p1, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$6;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$6;-><init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0
.end method

.method private displayTags()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateAgainTags:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->removeAllViews()V

    .line 181
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateAgainAppraiseDesc:Landroid/widget/TextView;

    sget-object v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->SCORE_DESC:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->getScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mSelectTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 183
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mData:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->getTags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mData:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mData:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->getTags()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->getScore()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 186
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateAgainTags:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->createTag(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initIntent()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "data"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    :try_start_0
    const-class v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;->getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;->getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;->getPayload()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mData:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    .line 106
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initIntent: mData is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mData:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    if-nez v1, :cond_1

    const-string v1, " null "

    goto :goto_1

    :cond_1
    const-string v1, " not null "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " if mData is null activity will finish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureFeedbackActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mData:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->finish()V

    :cond_2
    return-void
.end method

.method private initView()V
    .locals 5

    .line 113
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$id;->feature_feedback_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackRoot:Landroid/widget/FrameLayout;

    .line 114
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$id;->feature_feedback_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackContent:Landroid/widget/LinearLayout;

    .line 115
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$id;->feature_feedback_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTitle:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$id;->feature_feedback_new_version_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackNewVersionDesc:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$id;->feature_feedback_template_first:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateFirst:Landroid/widget/LinearLayout;

    .line 118
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$id;->feature_feedback_template_again:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateAgain:Landroid/widget/LinearLayout;

    .line 119
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$id;->feature_feedback_template_first_appraise:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateFirstAppraise:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

    .line 120
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$id;->feature_feedback_template_again_appraise_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateAgainAppraiseDesc:Landroid/widget/TextView;

    .line 121
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$id;->feature_feedback_template_again_appraise:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateAgainAppraise:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

    .line 122
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$id;->feature_feedback_template_again_tags:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateAgainTags:Lcom/google/android/flexbox/FlexboxLayout;

    .line 123
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$id;->feature_feedback_sure:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackSure:Landroid/support/v7/widget/CardView;

    .line 124
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$id;->feature_feedback_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackClose:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mData:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTitle:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$string;->are_you_satisfied_with_the_new_version:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mData:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    invoke-virtual {v4}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->getFeaturesName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackNewVersionDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mData:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    invoke-virtual {v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->getFeaturesDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateFirstAppraise:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

    new-instance v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;-><init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->setOnStarAppraiseClick(Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$OnStarAppraiseChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackTemplateAgainAppraise:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

    new-instance v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$3;-><init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->setOnStarAppraiseClick(Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$OnStarAppraiseChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackSure:Landroid/support/v7/widget/CardView;

    new-instance v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$4;-><init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mFeatureFeedbackClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$5;-><init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getScore()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mCurrentAppraiseIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    .line 217
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->sendFeaturesFeedback(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget p1, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$layout;->activity_feature_feedback:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->initIntent()V

    .line 87
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->initView()V

    return-void
.end method

.method public sendFeaturesFeedback(I)V
    .locals 3

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->getScore()I

    move-result v0

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mSelectTags:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v1, v0

    const/4 v0, 0x0

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->mData:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkUtil;->sendFeatureFeedback(ILcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;ILjava/util/List;)V

    .line 176
    sget p1, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$string;->thank_you_for_your_approval_we_will_continue_to_work_harder:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIToast;->showPlainTextToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
