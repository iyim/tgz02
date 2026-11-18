.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;
.super Ljava/lang/Object;
.source "UserRightBindingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private accountBindSrc:Ljava/lang/String;

.field private bindingCallBack:Landroid/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/util/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

.field private modelBeanMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;"
        }
    .end annotation
.end field

.field private saveRightsSuccessCallBack:Landroid/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/util/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private selectorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->selectorMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->modelBeanMap:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;)Landroid/arch/core/util/Function;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->saveRightsSuccessCallBack:Landroid/arch/core/util/Function;

    return-object p0
.end method

.method private doubleConfirm()V
    .locals 5

    .line 221
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;-><init>(Landroid/content/Context;)V

    .line 222
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 224
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_user_right_binding_double_confirm:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 225
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 226
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    new-instance v4, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$iw961uAlczbqcLFQHjgtaaOwfd0;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$iw961uAlczbqcLFQHjgtaaOwfd0;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;Landroid/widget/TextView;)V

    invoke-direct {p0, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->getNickName(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;Landroid/arch/core/util/Function;)V

    .line 237
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_confirm:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6fc0\u6d3b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->getOriginalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$IiezmXd7n3VnBhyLXaRy4KrnJ6g;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$IiezmXd7n3VnBhyLXaRy4KrnJ6g;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_cancel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$YTWnPmUvRhSlXtMANq4PXYEXRD0;

    invoke-direct {v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$YTWnPmUvRhSlXtMANq4PXYEXRD0;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->setContentView(Landroid/view/View;)V

    .line 247
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->show()V

    return-void
.end method

.method private getModelBean(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->modelBeanMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    return-object p1
.end method

.method private getNickName(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;Landroid/arch/core/util/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;",
            "Landroid/arch/core/util/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->getModelBean(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->getModelBean(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getThirdNick()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    :cond_1
    invoke-interface {p2, p1}, Landroid/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 182
    :cond_2
    invoke-interface {p2, v1}, Landroid/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->getModelBean(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$ir_04hvI65pvcAthNtLux9jyD4I;

    invoke-direct {v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$ir_04hvI65pvcAthNtLux9jyD4I;-><init>(Landroid/arch/core/util/Function;)V

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->updateNickName(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;Landroid/arch/core/util/Function;)V

    :goto_1
    return-void
.end method

.method private initSelector(ILandroid/view/View;Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$ClickListener;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 155
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    .line 156
    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->setOnSelectListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$ClickListener;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->getModelBean(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 158
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isIsAuthorized()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 159
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$XGwiInq7EuiG2OjPtpYasTR74Ls;

    invoke-direct {p3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$XGwiInq7EuiG2OjPtpYasTR74Ls;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;)V

    invoke-direct {p0, p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->getNickName(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;Landroid/arch/core/util/Function;)V

    .line 163
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isIsVip()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 164
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getStrVipExpire()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->setVipExpireTime(Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->selectorMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$create$82(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;Landroid/view/View;)V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$doubleConfirm$88(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;Landroid/view/View;)V
    .locals 0

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$getNickName$85(Landroid/arch/core/util/Function;Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    .line 184
    invoke-interface {p0, p1}, Landroid/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$initSelector$84(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->updateNickName(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private saveAccountBind(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 252
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;-><init>()V

    .line 253
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;->saveAccountBind(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$BindAccountCallback;)V

    :cond_0
    return-void
.end method

.method private updateNickName(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;Landroid/arch/core/util/Function;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            "Landroid/arch/core/util/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 196
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest;-><init>()V

    .line 197
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getAppId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;Landroid/arch/core/util/Function;)V

    const-string p1, "audio"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest;->queryUserInfoRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public create()Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 97
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;-><init>(Landroid/content/Context;)V

    .line 99
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_user_right_binding:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 100
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_confirm:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$SXDgfTeH-HfIv-Ls_sqaBCx9dWM;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$SXDgfTeH-HfIv-Ls_sqaBCx9dWM;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_cancel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$1jj6qHbrZmbMHJJEAd2Yt_ZFbHw;

    invoke-direct {v3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$1jj6qHbrZmbMHJJEAd2Yt_ZFbHw;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 121
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    .line 122
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const/high16 v4, 0x44160000    # 600.0f

    div-float/2addr v2, v4

    .line 124
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 125
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 126
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x443d0000    # 756.0f

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-virtual {v6, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 127
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v6, 0x43de8000    # 445.0f

    mul-float v2, v2, v6

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 128
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 130
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$59sOY3BxSyFiETGOaz3ZwL6lK5w;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$Builder$59sOY3BxSyFiETGOaz3ZwL6lK5w;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;)V

    .line 139
    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->selector_QQ:I

    invoke-direct {p0, v3, v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->initSelector(ILandroid/view/View;Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$ClickListener;)V

    .line 140
    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->selector_KG:I

    invoke-direct {p0, v3, v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->initSelector(ILandroid/view/View;Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$ClickListener;)V

    .line 141
    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->selector_KW:I

    invoke-direct {p0, v3, v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->initSelector(ILandroid/view/View;Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector$ClickListener;)V

    .line 142
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->selectorMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->accountBindSrc:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->selectorMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->accountBindSrc:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->setSelected(Z)V

    .line 145
    :cond_0
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->setContentView(Landroid/view/View;)V

    return-object v1
.end method

.method public synthetic lambda$create$81$UserRightBindingDialog$Builder(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    const-string v0, "TME-binding"

    if-eqz p2, :cond_1

    .line 102
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->getModelBean(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    .line 103
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->getModelBean(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isIsAuthorized()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->dismiss()V

    .line 105
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->doubleConfirm()V

    goto :goto_0

    :cond_0
    const-string p2, "confirm click, but need bind account first"

    .line 107
    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->dismiss()V

    .line 109
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->bindingCallBack:Landroid/arch/core/util/Function;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p2, " lastSelector is null, error"

    .line 112
    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$create$83$UserRightBindingDialog$Builder(Ljava/lang/String;)V
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelected tag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-binding"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastSelector tag : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->setSelected(Z)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->selectorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    return-void
.end method

.method public synthetic lambda$doubleConfirm$86$UserRightBindingDialog$Builder(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const-string v0, ""

    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6743\u76ca\u5145\u503c\u5230 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u7684"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->getOriginalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u8d26\u53f7\uff1f"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 229
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6743\u76ca\u5145\u503c\u5230"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff1f"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$doubleConfirm$87$UserRightBindingDialog$Builder(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;Landroid/view/View;)V
    .locals 0

    .line 240
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->lastSelector:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->getModelBean(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingSelector;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->saveAccountBind(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;)V

    .line 241
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->dismiss()V

    return-void
.end method

.method public setBindingCallBack(Landroid/arch/core/util/Function;)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/util/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->bindingCallBack:Landroid/arch/core/util/Function;

    return-object p0
.end method

.method public setModelBeanList(Ljava/util/List;)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;)",
            "Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;"
        }
    .end annotation

    const-string v0, "TME-binding"

    if-eqz p1, :cond_2

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    .line 61
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->modelBeanMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isIsAuthorized()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->accountBindSrc:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 63
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->accountBindSrc:Ljava/lang/String;

    .line 65
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modelBeanList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->accountBindSrc:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->accountBindSrc:Ljava/lang/String;

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountBindSrc: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->accountBindSrc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSaveRightsSuccessCallBack(Landroid/arch/core/util/Function;)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/util/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->saveRightsSuccessCallBack:Landroid/arch/core/util/Function;

    return-object p0
.end method
