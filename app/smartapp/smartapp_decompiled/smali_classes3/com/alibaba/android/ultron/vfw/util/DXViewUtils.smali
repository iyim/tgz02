.class public Lcom/alibaba/android/ultron/vfw/util/DXViewUtils;
.super Ljava/lang/Object;
.source "DXViewUtils.java"


# static fields
.field public static final TAG_DXROOT_VIEW:Ljava/lang/String; = "DXRootView"

.field private static final V2_TEMPLATE:I = 0x4e20

.field private static final V3_TEMPLATE:I = 0x7530

.field public static sUseWatermark:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addDialogWatermark(Landroid/view/View;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Landroid/view/View;
    .locals 5

    .line 113
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    if-eqz p1, :cond_0

    .line 119
    iget-object v1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    .line 120
    iget-wide v2, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 121
    iget-object p1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    move-object v2, p1

    .line 125
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "url: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    const-string p1, "\u590d\u5236URL"

    .line 128
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 139
    new-instance v1, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$2;

    invoke-direct {v1, p1}, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const-string p1, "DXRootView"

    .line 146
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    move-object p1, v0

    nop

    nop

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static addWatermark(Landroid/view/View;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Landroid/view/View;
    .locals 8

    .line 73
    sget-boolean v0, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils;->sUseWatermark:Z

    if-nez v0, :cond_0

    return-object p0

    .line 76
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    if-eqz p1, :cond_1

    .line 81
    iget-object v1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    .line 82
    iget-wide v2, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 85
    :goto_0
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "d: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils;->isV3Template(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dx3"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 90
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dx2"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz p1, :cond_5

    .line 93
    iget-boolean v2, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->isPreset:Z

    if-nez v2, :cond_4

    iget-wide v4, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-gez p1, :cond_3

    goto :goto_2

    .line 96
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u975e\u9884\u7f6e\u6a21\u7248"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 94
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u9884\u7f6e\u6a21\u7248"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_5
    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x33333333

    .line 100
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x30

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    const-string p1, "DXRootView"

    .line 105
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    move-object p1, v0

    nop

    nop

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static findDXRootView(Landroid/view/View;)Lcom/taobao/android/dinamicx/DXRootView;
    .locals 2

    .line 34
    instance-of v0, p0, Lcom/taobao/android/dinamicx/DXRootView;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    nop

    nop

    goto :goto_0

    :cond_0
    const-string v0, "DXRootView"

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/DXRootView;

    :goto_0
    if-nez v0, :cond_1

    .line 40
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 41
    nop

    nop

    invoke-static {p0}, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils;->traverseFindDXRootView(Landroid/view/ViewGroup;)Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static isV3Template(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getFileVersion()I

    move-result v1

    const/16 v2, 0x7530

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    return v3

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getFileVersion()I

    move-result v1

    const/16 v2, 0x4e20

    if-ne v1, v2, :cond_2

    return v0

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const-wide/16 v4, 0x0

    cmp-long p0, v1, v4

    if-ltz p0, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method private static traverseFindDXRootView(Landroid/view/ViewGroup;)Lcom/taobao/android/dinamicx/DXRootView;
    .locals 5

    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 51
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 52
    instance-of v4, v3, Lcom/taobao/android/dinamicx/DXRootView;

    if-eqz v4, :cond_0

    .line 53
    nop

    nop

    goto :goto_1

    .line 55
    :cond_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 56
    nop

    nop

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_4

    .line 61
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 62
    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils;->traverseFindDXRootView(Landroid/view/ViewGroup;)Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_4
    return-object v3
.end method
