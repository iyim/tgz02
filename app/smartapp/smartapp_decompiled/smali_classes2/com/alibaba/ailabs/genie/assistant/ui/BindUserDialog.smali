.class public Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;
.super Landroid/app/Dialog;
.source "BindUserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "BindUserDialog"

.field public static final WIFI_PKG:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private handler:Landroid/os/Handler;

.field private isRefreshQrCode:Z

.field private mContext:Landroid/content/Context;

.field private mLoadingView:Landroid/view/View;

.field private mQRcodeImg:Landroid/widget/ImageView;

.field private mRqRefresh:Landroid/view/View;

.field private mTipsContent:Landroid/widget/TextView;

.field private mTipsTitle:Landroid/widget/TextView;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$style;->MainWindowDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->isRefreshQrCode:Z

    .line 56
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getApplication()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mContext:Landroid/content/Context;

    .line 57
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->handler:Landroid/os/Handler;

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->isRefreshQrCode:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->gotoWifiSettings()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->gotoMainSettings()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mQRcodeImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mRqRefresh:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mLoadingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private collapsingNotification()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "WrongConstant"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "android.app.StatusBarManager"

    .line 242
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 243
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-gt v2, v3, :cond_1

    const-string v2, "collapse"

    .line 246
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v2, "collapsePanels"

    .line 248
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 251
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 1

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 416
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private gotoMainSettings()V
    .locals 2

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "yunostv_settings://settings_main_page"

    .line 181
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private gotoWifiSettings()V
    .locals 3

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "yunostv_settings://wifi_settings"

    .line 173
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "need_hide_home"

    const/4 v2, 0x1

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initChinaUnicom()V
    .locals 2

    .line 145
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isCU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tips_content_tx:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mTipsContent:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mTipsContent:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->tips_scan_code_china_unicom:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 150
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tips_title_tx:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mTipsTitle:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mTipsTitle:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->tips_title_china_unicom:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->bottom_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 154
    sget v1, Lcom/alibaba/ailabs/genie/agui/adapter/R$drawable;->lead_bottom:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private initForCMCC()V
    .locals 2

    .line 132
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isCM()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tips_content_tx:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mTipsContent:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mTipsContent:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->cmmcc_tips_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tips_title_tx:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mTipsTitle:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mTipsTitle:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->cmmcc_tips_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->bottom_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 141
    sget v1, Lcom/alibaba/ailabs/genie/agui/adapter/R$drawable;->lead_bottom:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private initForNJTelecom()V
    .locals 2

    .line 158
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isNT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tips_content_tx:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mTipsContent:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mTipsContent:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->tips_scan_code_telecom_nanjing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->tips_title_tx:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mTipsTitle:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mTipsTitle:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->tips_title_china_telecom_nanjing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->bottom_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    sget v1, Lcom/alibaba/ailabs/genie/agui/adapter/R$drawable;->lead_bottom:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private shieldHome()V
    .locals 6

    :try_start_0
    const-string v0, "android.view.Window"

    .line 200
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addPrivateFlags"

    const/4 v2, 0x1

    .line 201
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, 0x10000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zgq"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindUser(Ljava/lang/String;)V
    .locals 2

    .line 263
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->collapsingNotification()V

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindUser content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BindUserDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 302
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mQRcodeImg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    const-string v0, "BindUserDialog"

    const-string v1, "dialog dismiss"

    .line 194
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected init()V
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "WrongConstant"
        }
    .end annotation

    const-string v0, "BindUserDialog"

    const-string v1, "init"

    .line 68
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->shieldHome()V

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x10700

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 80
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x7d2

    .line 86
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, -0x1

    .line 87
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 88
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$layout;->activity_bind_user:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->setContentView(I)V

    .line 91
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->refresh:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mRqRefresh:Landroid/view/View;

    .line 92
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mLoadingView:Landroid/view/View;

    .line 93
    sget v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$id;->qr_img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mQRcodeImg:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mRqRefresh:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->initForCMCC()V

    .line 96
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->initForNJTelecom()V

    .line 97
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->initChinaUnicom()V

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mRqRefresh:Landroid/view/View;

    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_0

    .line 119
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revertApplication()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 122
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->screenWidth:I

    .line 123
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->screenHeight:I

    const/16 v0, 0x500

    .line 124
    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->screenWidth:I

    if-ne v0, v1, :cond_1

    const/16 v0, 0x320

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->screenHeight:I

    if-ne v0, v2, :cond_1

    .line 125
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mRqRefresh:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mContext:Landroid/content/Context;

    const/high16 v1, 0x440c0000    # 560.0f

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mContext:Landroid/content/Context;

    const/high16 v1, 0x43360000    # 182.0f

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->setMargins(ILandroid/view/View;IIII)V

    goto :goto_3

    .line 127
    :cond_1
    iget v9, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->screenHeight:I

    iget-object v10, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mRqRefresh:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x258

    if-ge v9, v1, :cond_2

    const/high16 v2, 0x44300000    # 704.0f

    goto :goto_1

    :cond_2
    const/high16 v2, 0x44170000    # 604.0f

    :goto_1
    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v11

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->screenHeight:I

    if-ge v2, v1, :cond_3

    const/high16 v1, 0x43320000    # 178.0f

    goto :goto_2

    :cond_3
    const/high16 v1, 0x43300000    # 176.0f

    :goto_2
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, p0

    invoke-virtual/range {v8 .. v14}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->setMargins(ILandroid/view/View;IIII)V

    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "BindUserDialog"

    const-string v1, "\u8bf7\u5148\u7ed1\u5b9a\u8fdb\u884c\u5176\u4ed6\u7684\u64cd\u4f5c"

    .line 259
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setMargins(ILandroid/view/View;IIII)V
    .locals 5

    .line 312
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 314
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mContext:Landroid/content/Context;

    const/high16 v2, 0x437b0000    # 251.0f

    const/16 v3, 0x258

    if-ge p1, v3, :cond_0

    const/high16 v4, 0x43820000    # 260.0f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x437b0000    # 251.0f

    :goto_0
    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 315
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mContext:Landroid/content/Context;

    if-ge p1, v3, :cond_1

    const/high16 v2, 0x43750000    # 245.0f

    :cond_1
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 316
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 317
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setOnLine(I)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mLoadingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mRqRefresh:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 215
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->isRefreshQrCode:Z

    .line 216
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mLoadingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mRqRefresh:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mQRcodeImg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 221
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mLoadingView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mRqRefresh:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 224
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->isRefreshQrCode:Z

    .line 225
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mLoadingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->mRqRefresh:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "BindUserDialog"

    const-string v1, "dialog show"

    .line 188
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
