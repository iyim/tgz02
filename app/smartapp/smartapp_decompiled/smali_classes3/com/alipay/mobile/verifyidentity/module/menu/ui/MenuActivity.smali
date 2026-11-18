.class public Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;
.super Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MenuActivity"


# instance fields
.field private b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->notifyError()V

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/menu/MenuModule;->ModuleData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->notifyError()V

    return-void

    .line 51
    :cond_1
    const-class v1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    return-void
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 70
    iget-object v0, p1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;)V

    .line 76
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 71
    :cond_1
    :goto_0
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a:Ljava/lang/String;

    const-string v0, "mMenuData is not legal"

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->notifyError()V

    return-void
.end method

.method private a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 4

    .line 80
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a:Ljava/lang/String;

    const-string v1, "processRpcResult"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;-><init>()V

    .line 82
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setMICRpcResponse(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 83
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 84
    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private b()V
    .locals 3

    .line 55
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->title:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;->menu:Ljava/util/List;

    iput-object v1, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    .line 58
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a(Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;->innerMenu:Ljava/util/List;

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a:Ljava/lang/String;

    const-string v1, "no extra list needed to be shown."

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuDataExtra;->innerMenu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    .line 64
    invoke-direct {p0, v1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a(Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->d:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method


# virtual methods
.method public getMenuClickRpc(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;
    .locals 1

    .line 95
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method public notifyError()V
    .locals 6

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v5, "2002"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .line 89
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onBackPressed()V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 91
    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v5, "1003"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->verify_menu_activity:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->setContentView(I)V

    .line 35
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->list_root:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->c:Landroid/widget/LinearLayout;

    .line 36
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->scroll_view_root:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->d:Landroid/widget/ScrollView;

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->a()V

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->b()V

    return-void
.end method
