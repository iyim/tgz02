.class public Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;
.super Ljava/lang/Object;
.source "MarketItemView.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/fragment/recommendvh/ItemViewInRecycleCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "MarketItemView"


# instance fields
.field private bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

.field private fragment:Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;

.field private iapId:Ljava/lang/String;

.field private idDetached:Z

.field private isCollectd:Z

.field private isInLocalDb:Z

.field private isUserClickOpen:Z

.field private ivMore:Landroid/widget/ImageView;

.field private listener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

.field public mBtnCollect:Landroid/widget/ImageView;

.field public mCloudTag:Landroid/widget/RelativeLayout;

.field public mCollectStatus:Landroid/widget/TextView;

.field public mIconView:Landroid/widget/ImageView;

.field public mItemTitle:Landroid/widget/TextView;

.field private mOptions:Lcom/bumptech/glide/request/RequestOptions;

.field public mProfressBar:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

.field public mRlInstalling:Landroid/widget/RelativeLayout;

.field public mTitleDesc:Landroid/widget/TextView;

.field private mWindow:Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;

.field rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isCollectd:Z

    .line 93
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isInLocalDb:Z

    .line 95
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->idDetached:Z

    .line 97
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isUserClickOpen:Z

    .line 108
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->rootView:Landroid/view/View;

    .line 109
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->initView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->iapId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isInLocalDb:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->idDetached:Z

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isInLocalDb:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isUserClickOpen:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isCollectd:Z

    return p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isCollectd:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->btnCollectSetVisibility(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->collectVisibility(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->initPopWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;ZLandroid/widget/TextView;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->marketFavorites(ZLandroid/widget/TextView;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->dismissPopWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;ZLandroid/widget/TextView;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->setFavoritesText(ZLandroid/widget/TextView;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private bindClick()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->ivMore:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 232
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$2;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->rootView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->rootView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$4;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mBtnCollect:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 353
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$5;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private btnCollectSetVisibility(I)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mBtnCollect:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private collectVisibility(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mCollectStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private dismissPopWindow()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mWindow:Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mWindow:Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private downLoadApk()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mRlInstalling:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private getCloudTestBean()Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;
    .locals 2

    .line 660
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;-><init>()V

    const-string v1, "APP\u53e3\u888b\u6545\u4e8bHD"

    .line 661
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->setTitle(Ljava/lang/String;)V

    const-string v1, "https://ailabs.alibabausercontent.com/images/e35257bc79b3631fa4a2970e65cf6089/1617176765292.png"

    .line 662
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->setIcon(Ljava/lang/String;)V

    const-string v1, "com.appshare.android.ilisten.hd"

    .line 663
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->setPackageName(Ljava/lang/String;)V

    const-string v1, "genie://com.alibaba.genie.proxy/launch?pkg=com.appshare.android.ilisten.hd&aligenieCloudApp=screenOrientation%3Dhorizontal%26appId%3D2021033126015%26appname%3DAPP%E5%8F%A3%E8%A2%8B%E6%95%85%E4%BA%8BHD%26pkgname%3Dcom.appshare.android.ilisten.hd%26%7B%22bgs%22%3D%22https%3A%2F%2Fimg.alicdn.com%2Fimgextra%2Fi4%2FO1CN018ggDj520Nqze2l2UR_%21%216000000006838-0-tps-1080-800.jpg%40%40%40https%3A%2F%2Fimg.alicdn.com%2Ftfs%2FTB1ylGVllBh1e4jSZFhXXcC9VXa-1080-800.jpg%40%40%40https%3A%2F%2Fimg.alicdn.com%2Ftfs%2FTB1wlGVllBh1e4jSZFhXXcC9VXa-1080-800.jpg%22%7D"

    .line 664
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->setActionUrl(Ljava/lang/String;)V

    const-string v1, "apk"

    .line 665
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->setBusinessType(Ljava/lang/String;)V

    const-string/jumbo v1, "\u53e3\u888b\u6545\u4e8b\u662f\u4e00\u4e2a\u65e8\u5728\u4e3a0-12\u5c81\u7684\u5b69\u5b50\u63d0\u4f9b\u6709\u58f0\u9605\u8bfb\u670d\u52a1\u7684\u5e73\u53f0\uff0c\u5df2\u8986\u76d6\u5168\u7403\u8d85\u8fc73500\u4e07\u7528\u6237\u3002\u76ee\u524d\u53e3\u888b\u6545\u4e8b\u5e73\u53f0\u7684\u5185\u5bb9\uff0c\u7d2f\u8ba1\u64ad\u653e\u5df2\u7ecf\u8d85\u8fc7100\u4ebf\u6b21\uff0c\u603b\u64ad\u653e\u65f6\u957f\u8fbe6.57\u4ebf\u5c0f\u65f6\uff0c\u76f8\u5f53\u4e8e75000\u5e74\u3002"

    .line 666
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->setDescription(Ljava/lang/String;)V

    const-string v1, "0.0.5"

    .line 667
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->setAppVersion(Ljava/lang/String;)V

    const-string/jumbo v1, "\u4e0a\u6d77\u7ae5\u9510\u7f51\u7edc\u79d1\u6280\u6709\u9650\u516c\u53f8"

    .line 668
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->setAuthor(Ljava/lang/String;)V

    const-string v1, "https://ar-platform.oss-cn-shanghai.aliyuncs.com/images/e35257bc79b3631fa4a2970e65cf6089/1617176842718/com.appshare.android.ilisten.hd.apk"

    .line 669
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->setDownloadUrl(Ljava/lang/String;)V

    const-string v1, "206"

    .line 670
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->setApkVersionCode(Ljava/lang/String;)V

    return-object v0
.end method

.method private getDownAndInstallListener()Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->listener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->listener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->listener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    return-object v0
.end method

.method private initPopWindow()V
    .locals 7

    .line 364
    new-instance v0, Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mWindow:Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;

    .line 365
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mWindow:Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 366
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_favorites:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 367
    sget v2, Lcom/alibaba/ailabs/appbox/R$id;->tv_detail:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPopWindow isCollectd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isCollectd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MarketItemView"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-boolean v2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isCollectd:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\u53d6\u6d88\u6dfb\u52a0"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "\u6dfb\u52a0\u5e94\u7528"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x42b00000    # 88.0f

    .line 372
    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v2

    neg-int v2, v2

    .line 373
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mWindow:Lcom/alibaba/ailabs/appbox/utils/MarketPopupWindow;

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->ivMore:Landroid/widget/ImageView;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-static {v5}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v5

    neg-int v5, v5

    const v6, 0x800005

    invoke-static {v3, v4, v5, v2, v6}, Landroid/support/v4/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 374
    new-instance v2, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$6;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$6;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$7;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 113
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_market3_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mIconView:Landroid/widget/ImageView;

    .line 114
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_cloud_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mCloudTag:Landroid/widget/RelativeLayout;

    .line 115
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_market3_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mItemTitle:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_market3_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mTitleDesc:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_market_app_install_ing:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mRlInstalling:Landroid/widget/RelativeLayout;

    .line 118
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_market3_collect:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mBtnCollect:Landroid/widget/ImageView;

    .line 119
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_market3_collected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mCollectStatus:Landroid/widget/TextView;

    .line 120
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->pg_item_market_app_download:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mProfressBar:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    .line 121
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->ivMore:Landroid/widget/ImageView;

    .line 122
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mProfressBar:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;->setProgress(I)V

    .line 123
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bindClick()V

    .line 124
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v0, Lcom/alibaba/ailabs/appbox/R$drawable;->iv_default_icon:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method private marketFavorites(ZLandroid/widget/TextView;)V
    .locals 8

    .line 415
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "itemCollectClick"

    const-string v2, "MarketItem"

    .line 418
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportItemEvent(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "marketFavorites iapId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->iapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",bean.getAppId():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketItemView"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 421
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$8;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$8;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Landroid/widget/TextView;)V

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->iapId:Ljava/lang/String;

    .line 457
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->iapId:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market_recomend_page_"

    .line 421
    invoke-static {p1, v0, p2, v1, v2}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->collectApplet2(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 489
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->iapId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->iapId:Ljava/lang/String;

    :goto_1
    move-object v0, p1

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 490
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getUninstallable()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;

    invoke-direct {v7, p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Landroid/widget/TextView;)V

    const-string v2, "market_category_page_"

    .line 489
    invoke-static/range {v0 .. v7}, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->unCollectAppletAndUninstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    .line 522
    :goto_2
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->iapId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->iapId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 523
    new-instance p1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$10;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$10;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)V

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 550
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->getCurrentPattern()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market_category_page_"

    .line 523
    invoke-static {p1, p2, v0, v2, v1}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->unCollectApplet2(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private reportToUt(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ILjava/lang/String;)V
    .locals 1

    .line 565
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$11;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setFavoritesText(ZLandroid/widget/TextView;)V
    .locals 2

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFavoritesText: collect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",tvFavorites:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketItemView"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isCollectd:Z

    .line 557
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isInLocalDb:Z

    .line 558
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->setInstalledState(Z)V

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "\u53d6\u6d88\u6dfb\u52a0"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "\u6dfb\u52a0\u5e94\u7528"

    .line 560
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setInstalledState(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 585
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->btnCollectSetVisibility(I)V

    .line 586
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->collectVisibility(I)V

    goto :goto_0

    .line 588
    :cond_0
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->btnCollectSetVisibility(I)V

    .line 589
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->collectVisibility(I)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bindData(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V
    .locals 4

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 135
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mIconView:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/appbox/R$drawable;->iv_default_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/base/util/AppTypeUtil;->isCloudAppUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mCloudTag:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mCloudTag:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 191
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mTitleDesc:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIsCollected()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isCollectd:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->isInLocalDb:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 200
    :cond_3
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->btnCollectSetVisibility(I)V

    .line 201
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->collectVisibility(I)V

    goto :goto_3

    .line 197
    :cond_4
    :goto_2
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->btnCollectSetVisibility(I)V

    .line 198
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->collectVisibility(I)V

    .line 205
    :goto_3
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->isUrlInDownload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->getDownAndInstallListener()Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstall(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ZLcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V

    :cond_5
    return-void
.end method

.method public bindData(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;)V
    .locals 1

    .line 129
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;->getIapId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->iapId:Ljava/lang/String;

    .line 130
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bindData(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    .line 649
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->idDetached:Z

    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "MarketItemView"

    const-string v0, "onViewRecycled"

    .line 655
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->listener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->removeListener(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V

    return-void
.end method
