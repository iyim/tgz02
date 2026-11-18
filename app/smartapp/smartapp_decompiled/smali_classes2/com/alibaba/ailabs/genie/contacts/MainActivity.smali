.class public Lcom/alibaba/ailabs/genie/contacts/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field private static final CALL_RECORD_FLAG:I = 0x1

.field private static final CONTACTS_FLAG:I = 0x0

.field public static final DELAY_CHECK_PKG:I = 0x5

.field public static final DELAY_LOAD_VIEWPAGER:I = 0x4

.field private static final DIAL_FLAG:I = 0x2

.field public static final FIRST_OPEN:Ljava/lang/String; = "key.first_open"

.field private static final GENIE_CALL_RECORD:Ljava/lang/String; = "com.alibaba.ailabs.genie.contacts/CallRecordFragment"

.field private static final GENIE_CONTACTS:Ljava/lang/String; = "com.alibaba.ailabs.genie.contacts/ContactsFrament"

.field private static final GENIE_DIAL:Ljava/lang/String; = "com.alibaba.ailabs.genie.contacts/DialFragment"

.field public static final GET_DATA_FAILS:I = 0x3

.field public static final START_LOADING:I = 0x1

.field public static final STOP_LOADING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "contacts_MainActivity"


# instance fields
.field public cmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

.field private isBack:Z

.field private isChildMode:Z

.field private mContactsText:Landroid/widget/TextView;

.field private mCurrentItemIndex:I

.field private mDialText:Landroid/widget/TextView;

.field private mExitView:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

.field private mFragmentPagerAdapter:Lcom/alibaba/ailabs/genie/contacts/common/base/MainFragmentPagerAdapter;

.field private mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field public mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

.field private mRecordText:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

.field private mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

.field private missedCalls:Ljava/lang/String;

.field private nav_bar_tex_guide:Landroid/widget/TextView;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mCurrentItemIndex:I

    .line 85
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->properties:Ljava/util/Map;

    .line 89
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->isBack:Z

    .line 98
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    return-object p0
.end method

.method private clearDecorViewBg()V
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 258
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private createMainFragmentList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mList:Ljava/util/List;

    .line 325
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;-><init>()V

    .line 326
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->setHandler(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;)V

    .line 327
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;-><init>()V

    .line 328
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->setHandler(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;)V

    .line 329
    new-instance v2, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;-><init>()V

    .line 330
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->setHandler(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;)V

    .line 331
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mList:Ljava/util/List;

    return-object v0
.end method

.method private initClickEvent()V
    .locals 1

    .line 338
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->contacts_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->record_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initComponent()V
    .locals 2

    .line 302
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->root_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mRootView:Landroid/view/View;

    .line 303
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->contacts_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mContactsText:Landroid/widget/TextView;

    .line 304
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->record_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mRecordText:Landroid/widget/TextView;

    .line 305
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mDialText:Landroid/widget/TextView;

    .line 306
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->layout_exit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mExitView:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    .line 307
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mExitView:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$Qw2wj13C8Fie9Hz87D7fDinw7Ok;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$Qw2wj13C8Fie9Hz87D7fDinw7Ok;-><init>(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->initViewPager()V

    return-void
.end method

.method private initGuide()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->nav_bar_tex_guide:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewPager()V
    .locals 3

    .line 312
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->contact_content_vp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    .line 313
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;->setOffscreenPageLimit(I)V

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 315
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/common/base/MainFragmentPagerAdapter;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->createMainFragmentList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/alibaba/ailabs/genie/contacts/common/base/MainFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mFragmentPagerAdapter:Lcom/alibaba/ailabs/genie/contacts/common/base/MainFragmentPagerAdapter;

    .line 316
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mFragmentPagerAdapter:Lcom/alibaba/ailabs/genie/contacts/common/base/MainFragmentPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 317
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public static synthetic lambda$9_QM2_o7UVnPkuAKmsLWIFK9Ag8(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->updateBg()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private resetTitle()V
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mContactsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_tab_text_color_no_select:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_tab_text_color_no_select:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mDialText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_tab_text_color_no_select:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "fromtype"

    .line 265
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "from_type_app_store"

    .line 266
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 267
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->isBack:Z

    .line 269
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 273
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, "missedCalls"

    .line 275
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->missedCalls:Ljava/lang/String;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missedCalls = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->missedCalls:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "contacts_MainActivity"

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->missedCalls:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->missedCalls:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 278
    iput v2, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mCurrentItemIndex:I

    return v2

    .line 284
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheme = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "contacts_home"

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/page/home"

    .line 288
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mCurrentItemIndex:I

    return v2

    :cond_4
    const-string v1, "/page/history"

    .line 291
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 292
    iput v2, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mCurrentItemIndex:I

    return v2

    :cond_5
    const-string v1, "/page/dial"

    .line 294
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    .line 295
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mCurrentItemIndex:I

    return v2

    :cond_6
    return v0
.end method

.method private selectMode()V
    .locals 2

    .line 235
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->isChildMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->isChildMode:Z

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mExitView:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->isChildMode:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setChildMode(Z)V

    return-void
.end method

.method private setSelect(I)V
    .locals 2

    const/16 v0, 0x2712

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "com.alibaba.ailabs.genie.contacts/DialFragment"

    .line 417
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mDialText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_tab_text_color_select:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mContactsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->title_bar_index_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 420
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->title_bar_index_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 421
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mDialText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->title_bar_index_size_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 408
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->updateCallsViewedTime()V

    const-string p1, "com.alibaba.ailabs.genie.contacts/CallRecordFragment"

    .line 409
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/lang/String;)V

    .line 410
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_tab_text_color_select:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mContactsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->title_bar_index_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 412
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->title_bar_index_size_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 413
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mDialText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->title_bar_index_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_2
    const-string p1, "com.alibaba.ailabs.genie.contacts/ContactsFrament"

    .line 400
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/lang/String;)V

    .line 401
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mContactsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_tab_text_color_select:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mContactsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->title_bar_index_size_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 403
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->title_bar_index_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 404
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mDialText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->title_bar_index_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    return-void
.end method

.method private showTipsToast()V
    .locals 3

    .line 184
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->isCmccDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->isCuDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key.first_open"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 187
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/TopTipsUtils;->showTopTips(Landroid/content/Context;Z)V

    .line 188
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->putInt(Ljava/lang/String;I)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->commit()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    :cond_1
    return-void
.end method

.method private updateBg()V
    .locals 3

    .line 240
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->isChildMode:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mRootView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$mipmap;->contacts_bg_child:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_third_page_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private updateViewPager()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;->getCurrentItem()I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mCurrentItemIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;->setCurrentItem(IZ)V

    .line 216
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;->isFirstLayout()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mCurrentItemIndex:I

    if-ne v0, v1, :cond_1

    .line 217
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mCurrentItemIndex:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->onPageSelected(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 207
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 210
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$initComponent$69$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreate$68$MainActivity()V
    .locals 1

    .line 170
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->isChildMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->isChildMode:Z

    .line 171
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$9_QM2_o7UVnPkuAKmsLWIFK9Ag8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$9_QM2_o7UVnPkuAKmsLWIFK9Ag8;-><init>(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onPageSelected$70$MainActivity(Ljava/lang/String;)V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->properties:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 383
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->contacts_text:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 384
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 385
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->record_text:I

    if-ne p1, v0, :cond_1

    .line 386
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    invoke-virtual {p1, v1, v1}, Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 387
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_text:I

    if-ne p1, v0, :cond_2

    .line 388
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;->setCurrentItem(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 140
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$style;->con_AppTheme_Main:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->setTheme(I)V

    .line 141
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contacts_MainActivity"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->reloadAuthInfo()V

    const-string p1, "onCreate: reloadAuthInfo"

    .line 144
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ScreenUtils;->setTranslucentStatus(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    :goto_0
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 151
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->contact_activity_main:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->setContentView(I)V

    .line 152
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    .line 153
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->clearDecorViewBg()V

    .line 154
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->initComponent()V

    .line 155
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->initClickEvent()V

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->resolveIntent(Landroid/content/Intent;)Z

    .line 157
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$id;->nav_bar_tex_guide:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->nav_bar_tex_guide:Landroid/widget/TextView;

    .line 160
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->isUniComCustom()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->isCMCC()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->nav_bar_tex_guide:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 161
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->nav_bar_tex_guide:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->initGuide()V

    .line 167
    :goto_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->flushStackLocalLeaks(Landroid/os/Looper;)V

    .line 168
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->showTipsToast()V

    .line 169
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$bfiFo_NqiO0vldbQogiWGSY6Iu4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$bfiFo_NqiO0vldbQogiWGSY6Iu4;-><init>(Lcom/alibaba/ailabs/genie/contacts/MainActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 172
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 174
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->hasInstallCmRtc()Z

    move-result p1

    const-string v0, "cmcc-contacts_MainActivity"

    if-eqz p1, :cond_2

    const-string p1, "hasInstallCmRtc true"

    .line 175
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->cmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    .line 177
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->cmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->checkPackage()V

    goto :goto_3

    :cond_2
    const-string p1, "hasInstallCmRtc false"

    .line 179
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 355
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const-string v0, "contacts_MainActivity"

    const-string v1, "onDestroy..."

    .line 356
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 361
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->cmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->onDestroy()V

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 373
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mList:Ljava/util/List;

    .line 377
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 223
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 224
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->selectMode()V

    .line 225
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->updateBg()V

    .line 226
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->resolveIntent(Landroid/content/Intent;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageScrollStateChanged() called with: state = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contacts_MainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageScrolled() called with: position = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], positionOffset = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "], positionOffsetPixels = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "contacts_MainActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected() called with: position = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_MainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mCurrentItemIndex:I

    .line 445
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->resetTitle()V

    .line 446
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->setSelect(I)V

    .line 447
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mFragmentPagerAdapter:Lcom/alibaba/ailabs/genie/contacts/common/base/MainFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/MainFragmentPagerAdapter;->setSelected(I)V

    .line 448
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->properties:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 449
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->missedCalls:Ljava/lang/String;

    const-string v0, "clickEnter"

    if-nez p1, :cond_0

    .line 450
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->properties:Ljava/util/Map;

    const-string v1, "false"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 452
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->properties:Ljava/util/Map;

    const-string v1, "true"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mViewPager:Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/view/MainViewPager;->getCurrentItem()I

    move-result p1

    const-string v0, "spm-cnt"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const-string p1, ""

    goto :goto_1

    .line 466
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->properties:Ljava/util/Map;

    const-string v1, "a1z3lt.12013438"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Call_keypad"

    goto :goto_1

    .line 462
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->properties:Ljava/util/Map;

    const-string v1, "a1z3lt.12013448"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Call_logs"

    goto :goto_1

    .line 458
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->properties:Ljava/util/Map;

    const-string v1, "a1z3lt.12013373"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "call_contact"

    .line 474
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 475
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$y-mE9xvMvdzzTdy2BxpV4y_aRYA;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$y-mE9xvMvdzzTdy2BxpV4y_aRYA;-><init>(Lcom/alibaba/ailabs/genie/contacts/MainActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onResume()V
    .locals 4

    .line 195
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 196
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->updateViewPager()V

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 199
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->cmccPresenter:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
