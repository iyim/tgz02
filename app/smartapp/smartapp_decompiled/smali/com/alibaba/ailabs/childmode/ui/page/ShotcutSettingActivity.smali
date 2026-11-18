.class public Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;
.super Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;
.source "ShotcutSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ShotcutSettingActivity"


# instance fields
.field mMainHandler:Landroid/os/Handler;

.field mShotCutContentObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mVerticalScrollBar:Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;

.field private scroll_content:Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->mVerticalScrollBar:Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;

    .line 27
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->scroll_content:Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;

    .line 71
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity$1;

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity$1;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->mShotCutContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->update()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private update()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->mSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isShotCutEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected enableTranslucentStatus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateShotCutInfo(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$layout;->shotcut_setting_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->setContentView(I)V

    .line 35
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$id;->nav_bar:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;

    const-string/jumbo v0, "\u573a\u666f\u5feb\u6377\u8bcd"

    .line 36
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->setTitle(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->setHostActivity(Landroid/app/Activity;)V

    .line 38
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$id;->quick_enable_switch:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->mSwitch:Landroid/widget/Switch;

    .line 39
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string p1, "content://com.alibaba.ailabs.childmode.provider"

    .line 40
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->mShotCutContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$id;->scroll_content:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->scroll_content:Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;

    .line 44
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$id;->vertical_scroll_bar:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->mVerticalScrollBar:Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;

    .line 45
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->scroll_content:Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->mVerticalScrollBar:Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->setOnRecycleViewScrollListener(Lcom/alibaba/ailabs/childmode/ui/widget/OnRecycleViewScrollListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 50
    invoke-super {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onDestroy()V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->mShotCutContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->onResume()V

    .line 62
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->update()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
