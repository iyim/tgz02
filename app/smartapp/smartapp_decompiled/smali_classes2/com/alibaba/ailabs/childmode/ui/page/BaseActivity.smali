.class public Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/childmode/ui/page/ContextListener;


# static fields
.field public static final DISABLE_EXPAND:I = 0x10000

.field public static final DISABLE_EXPAND_LOW:I = 0x1

.field public static final DISABLE_NONE:I = 0x0

.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field public static final KEY_FROM_ACT:Ljava/lang/String; = "from_act"

.field private static final STATUS_BAR_DISABLE_EXPAND:I = 0x10000

.field public static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogUtil:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

.field protected mFrom:Ljava/lang/String;

.field protected mFromAct:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private banStatusBar()V
    .locals 2

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 247
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->setStatusBarDisable(I)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    .line 249
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->setStatusBarDisable(I)V

    :goto_0
    return-void
.end method

.method public static getTimeTip(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .line 65
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$string;->minute:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    sget v1, Lcom/alibaba/ailabs/genie/setting/R$string;->hour:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-gtz p1, :cond_0

    .line 69
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$string;->unrestricted:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x3c

    if-lt p1, p0, :cond_2

    .line 71
    rem-int/lit8 v2, p1, 0x3c

    if-lez v2, :cond_1

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimeTip min time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseActivity"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private shieldHome()V
    .locals 6

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const-string v0, "android.view.Window"

    .line 182
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addPrivateFlags"

    const/4 v2, 0x1

    .line 183
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->getWindow()Landroid/view/Window;

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

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private translucentStatus()V
    .locals 1

    const/4 v0, 0x1

    .line 200
    :try_start_0
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->setTranslucentStatus(Landroid/app/Activity;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public OnNetworkDialog(B)Landroid/app/Dialog;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->getDialogUtil()Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->showNetworkDialog(B)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public OnWaitProgressDialog(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 153
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mContext:Landroid/content/Context;

    const/16 v0, 0x2713

    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method protected enableShieldHome()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected enableTranslucentStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method protected getDialogUtil()Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mDialogUtil:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mDialogUtil:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mDialogUtil:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    return-object v0
.end method

.method protected getPageFrom()Ljava/lang/String;
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageFromProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "from"

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mFrom:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mFromAct:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "from_act"

    if-nez v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mFromAct:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 130
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getReferPage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isBanStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->parsePageProperties()V

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->enableShieldHome()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->shieldHome()V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->enableTranslucentStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->translucentStatus()V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->isBanStatusBar()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->banStatusBar()V

    :cond_2
    return-void
.end method

.method public onErrorDialog(BLjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->getDialogUtil()Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->showErrorDialog(BLjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method protected onResume()V
    .locals 0

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected parsePageProperties()V
    .locals 5

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "from_act"

    const-string v3, "from"

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mFrom:Ljava/lang/String;

    .line 100
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mFromAct:Ljava/lang/String;

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mFromAct:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mFrom:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->mFromAct:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setStatusBarDisable(I)V
    .locals 7

    const-string v0, "statusbar"

    .line 232
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.StatusBarManager"

    .line 235
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "disable"

    const/4 v3, 0x1

    .line 236
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 237
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 239
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->unBanStatusBar()V

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unBanStatusBar()V
    .locals 7

    const-string v0, "statusbar"

    .line 220
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.StatusBarManager"

    .line 223
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "disable"

    const/4 v3, 0x1

    .line 224
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 225
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
