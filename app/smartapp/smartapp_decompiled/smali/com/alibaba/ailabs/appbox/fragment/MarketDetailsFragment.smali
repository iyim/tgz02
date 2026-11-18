.class public Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;
.super Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;
.source "MarketDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MarketDetailsFragment-l"


# instance fields
.field bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

.field private circleIndicator:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

.field private elipseString:Landroid/text/SpannableStringBuilder;

.field private isCollected:Z

.field private iv_app_detail_shorcut:Landroid/widget/ImageView;

.field private iv_fragment_app_detail_icon:Landroid/widget/ImageView;

.field private magicIndicator:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

.field marketDownloadAndInstallListener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

.field private notElipseString:Landroid/text/SpannableStringBuilder;

.field private pg_detail_update:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

.field private rl_fragment_app_detail_update:Landroid/widget/RelativeLayout;

.field private shortcutViewpagerAdapter:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;

.field private tv_fragment_app_detail_detail:Landroid/widget/TextView;

.field private tv_fragment_app_detail_devenloper:Landroid/widget/TextView;

.field private tv_fragment_app_detail_open1:Landroid/widget/TextView;

.field private tv_fragment_app_detail_open2:Landroid/widget/TextView;

.field private tv_fragment_app_detail_openbyschema:Landroid/widget/TextView;

.field private tv_fragment_app_detail_status:Landroid/widget/TextView;

.field private tv_fragment_app_detail_title:Landroid/widget/TextView;

.field private tv_fragment_app_detail_title_desc:Landroid/widget/TextView;

.field private tv_fragment_app_detail_update:Landroid/widget/TextView;

.field private tv_fragment_app_detail_updating:Landroid/widget/TextView;

.field private tv_fragment_app_shotcut_info:Landroid/widget/TextView;

.field private vp_app_detail_shorcut:Landroid/support/v4/view/ViewPager;

.field private vp_app_fg:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->isCollected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->pg_detail_update:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_openbyschema:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->notElipseString:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->isCollected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->showCollectStatus()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Lcom/alibaba/fastjson/JSONArray;
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getScreenShot()Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_updating:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_update:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->rl_fragment_app_detail_update:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->isCollected:Z

    return p0
.end method

.method static synthetic access$502(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->isCollected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->vp_app_detail_shorcut:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->setInstallProgress(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;Z)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->setInstallStatusToLayout(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private bindData()V
    .locals 7

    .line 214
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->iv_fragment_app_detail_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_title_desc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getApkVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isApkShouldUpdate(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->rl_fragment_app_detail_update:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_update:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->rl_fragment_app_detail_update:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isApkAvailable(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 257
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->setInstallStatusToLayout(Z)V

    goto :goto_1

    .line 259
    :cond_1
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->setInstallStatusToLayout(Z)V

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->isUrlInDownload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getListener()Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstall(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ZLcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_openbyschema:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6253\u5f00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_openbyschema:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getVoiceDisposition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertStr2FastJA(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lt v0, v3, :cond_3

    .line 406
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_open1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getVoiceDisposition()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertStr2FastJA(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->setSpanableStringForVoiceTips(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_open1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->setSpanableStringForVoiceTips(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 410
    :goto_2
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getVoiceDisposition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertStr2FastJA(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_4

    .line 411
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_open2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getVoiceDisposition()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertStr2FastJA(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->setSpanableStringForVoiceTips(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_3

    .line 413
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_open2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    :goto_3
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_detail:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->setTextViewForLimit(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 421
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getScreenShot()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 422
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->vp_app_detail_shorcut:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->vp_app_fg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->magicIndicator:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_shotcut_info:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 427
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->magicIndicator:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->vp_app_fg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->vp_app_detail_shorcut:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->shortcutViewpagerAdapter:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;

    if-nez v0, :cond_6

    .line 431
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->shortcutViewpagerAdapter:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;

    .line 433
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->vp_app_detail_shorcut:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->shortcutViewpagerAdapter:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 434
    new-instance v0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;-><init>(Landroid/content/Context;)V

    .line 435
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getScreenShot()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->setCircleCount(I)V

    const-string v1, "#FFFFFF"

    .line 436
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->setCircleColor(I)V

    .line 437
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$4;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->setCircleClickListener(Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;)V

    .line 446
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->magicIndicator:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;->setNavigator(Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;)V

    .line 447
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->magicIndicator:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->vp_app_detail_shorcut:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/view/indicator/ViewPagerHelper;->bind(Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;Landroid/support/v4/view/ViewPager;)V

    :goto_4
    return-void
.end method

.method private checkCollected()V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getTypeFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->getCurrentPattern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$9;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$9;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->queryCollectedAppletWithPattern(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method

.method private getListener()Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->marketDownloadAndInstallListener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$5;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->marketDownloadAndInstallListener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->marketDownloadAndInstallListener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    return-object v0
.end method

.method private getScreenShot()Lcom/alibaba/fastjson/JSONArray;
    .locals 7

    .line 779
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getScreenShot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertStr2FastJA(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreenShot screenShotArray:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MarketDetailsFragment-l"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 782
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    return-object v0

    .line 784
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 785
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 786
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 787
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "http"

    .line 791
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 792
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v5, "//ailabs.alibabausercontent.com/"

    .line 793
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 794
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 797
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreenShot resultArray:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getTypeFromId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 664
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "."

    .line 667
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "apk"

    return-object p1

    :cond_1
    const-string p1, "applet"

    return-object p1
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 163
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_back_fragement_app:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_openbyschema:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_openbyschema:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_fragment_app_detail_update:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->rl_fragment_app_detail_update:Landroid/widget/RelativeLayout;

    .line 175
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_update:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_update:Landroid/widget/TextView;

    .line 176
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->pg_detail_update:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->pg_detail_update:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    .line 177
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_updating:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_updating:Landroid/widget/TextView;

    .line 179
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    .line 186
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->showCollectStatus()V

    .line 193
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_detail:Landroid/widget/TextView;

    .line 195
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_title_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_title_desc:Landroid/widget/TextView;

    .line 196
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_title:Landroid/widget/TextView;

    .line 198
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_open1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_open1:Landroid/widget/TextView;

    .line 199
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_detail_open2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_open2:Landroid/widget/TextView;

    .line 202
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->vp_app_detail_shorcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->vp_app_detail_shorcut:Landroid/support/v4/view/ViewPager;

    .line 204
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->vp_app_fg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->vp_app_fg:Landroid/view/View;

    .line 205
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->magic_ind_topic_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->magicIndicator:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    .line 207
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_fragment_app_shotcut_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_shotcut_info:Landroid/widget/TextView;

    .line 208
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_fragment_app_detail_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->iv_fragment_app_detail_icon:Landroid/widget/ImageView;

    return-void
.end method

.method private isCollected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 650
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 653
    :cond_0
    const-class v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 654
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCollected marketAppItemBean:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",pageName\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MarketDetailsFragment-l"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private setInstallProgress(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setInstallStatusToLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 514
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_openbyschema:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 518
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_openbyschema:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setSpanableString()V
    .locals 5

    .line 589
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5c55\u5f00\u66f4\u591a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 592
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$8;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V

    .line 606
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 608
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_detail:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#B7C7D5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 611
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 613
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/appbox/R$dimen;->app_title_desc_desc_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 616
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_detail:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 617
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_detail:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSpanableStringForVoiceTips(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    .line 529
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 530
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "\u5929\u732b\u7cbe\u7075"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5929\u732b\u7cbe\u7075, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 533
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5929\u732b\u7cbe\u7075\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 535
    :goto_0
    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v1, 0x5

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 536
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextViewForLimit(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 10

    .line 540
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 541
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v8

    .line 542
    new-instance v9, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 543
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$6;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;Landroid/widget/TextView;)V

    .line 551
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$7;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;Landroid/widget/TextView;)V

    .line 557
    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-le v2, v8, :cond_1

    .line 558
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#0082FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u6536\u8d77"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->notElipseString:Landroid/text/SpannableStringBuilder;

    .line 562
    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->notElipseString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 563
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->notElipseString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v8, v8, -0x1

    .line 564
    invoke-virtual {v9, v8}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 565
    invoke-virtual {v9, v8}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 566
    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    .line 567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "####3333 index is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; end is:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; content is:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MarketDetailsFragment-l"

    invoke-static {v4, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###3333 content lenght is:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; textView width:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, -0x8

    if-lez v3, :cond_0

    .line 571
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    const-string v1, " \u5c55\u5f00\u66f4\u591a"

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 572
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/alibaba/ailabs/appbox/R$dimen;->app_title_desc_desc_text_size:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    iget-object v5, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {p2, v1, v3, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 574
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "####33333 elipseString is:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p2, v0, v1, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 577
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p2, v2, v0, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 578
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/appbox/R$dimen;->app_title_desc_desc_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 579
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 580
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->elipseString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showCollectStatus()V
    .locals 2

    .line 675
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->isCollected:Z

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5df2\u6dfb\u52a0\u81f3 \u6211\u7684 >"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    const-string v1, "#7383A2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 678
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/appbox/R$drawable;->conner_rect_bg_gray:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 679
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6dfb\u52a0\u81f3\u6211\u7684"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    const-string v1, "#0082FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 683
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/appbox/R$drawable;->bg_text_ripple_conner_45_blue_stroke:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 684
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->tv_fragment_app_detail_status:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public doOlnyOnceAtAfterStart()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getLayoutId()I
    .locals 1

    .line 135
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->fragment_app_detail_market3:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 695
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 696
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_back_fragement_app:I

    if-ne p1, v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 128
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AdapterUtils;->setCustomDensityHeight(Landroid/content/Context;)V

    .line 130
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 774
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onDestroy()V

    .line 775
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string p1, "MarketDetailsFragment-l"

    const-string v0, "onNewIntent call.. "

    .line 452
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bindData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPause()V
    .locals 0

    .line 690
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onPause()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onReceiveMsg(Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        priority = 0x3
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 763
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->isInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->getBean()Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 765
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceiveMsg message.isInstall --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketDetailsFragment-l"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 766
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->setInstallStatusToLayout(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 623
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onResume()V

    .line 624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AppDetailsFragment"

    invoke-static {v1, v1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 626
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->checkCollected()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 147
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "appdetail"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "isCollected"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->isCollected:Z

    .line 151
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->initView(Landroid/view/View;)V

    .line 153
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bindData()V

    .line 155
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 156
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "title"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "appid"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "packagename"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "detail_page_create"

    const-string v0, "app_detail_"

    .line 159
    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
