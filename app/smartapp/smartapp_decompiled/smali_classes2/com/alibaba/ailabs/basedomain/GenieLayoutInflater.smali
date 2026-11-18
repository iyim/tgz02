.class public Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "GenieLayoutInflater.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mResources:Landroid/content/res/Resources;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;
    .locals 1

    .line 32
    new-instance v0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    .line 89
    new-instance v0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public inflate(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/HDUtils;->isHD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_hd"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public inflate(Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 45
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/HDUtils;->isHD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_hd"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public inflate(Ljava/lang/String;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4

    const-string v0, "layout"

    .line 57
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/HDUtils;->isHD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_hd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 62
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 64
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 66
    :catch_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
