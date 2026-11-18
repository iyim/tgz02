.class public Lcom/taobao/android/preview/DXTemplatePreviewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DXTemplatePreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/taobao/android/preview/PreviewViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final EMPTY_VIEW_TYPE:I

.field context:Landroid/content/Context;

.field engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

.field private jsonArray:Lcom/alibaba/fastjson/JSONArray;

.field private position2Type:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private template2Type:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private type2DinamicTemplate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation
.end field

.field private viewTypeCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/fastjson/JSONArray;Landroid/support/v7/widget/RecyclerView;Lcom/taobao/android/dinamicx/DinamicXEngineRouter;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->EMPTY_VIEW_TYPE:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->viewTypeCounter:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->position2Type:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->template2Type:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->type2DinamicTemplate:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    .line 52
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 53
    iput-object p4, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    .line 54
    iput-object p3, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 55
    iput-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->context:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->buildViewTypes()V

    return-void
.end method

.method private buildViewTypes()V
    .locals 5

    const/4 v0, 0x0

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 72
    new-instance v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    invoke-direct {v1}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;-><init>()V

    .line 73
    iget-object v2, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "template"

    .line 76
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "version"

    .line 77
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const-string v3, "name"

    .line 78
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    const-string v3, "url"

    .line 79
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    .line 81
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->template2Type:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iget-object v1, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->position2Type:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->template2Type:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {v2, v1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->fetchTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    if-nez v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->position2Type:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->template2Type:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    iget-object v1, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->position2Type:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->template2Type:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 97
    :cond_2
    iget v3, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->viewTypeCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->viewTypeCounter:I

    .line 98
    iget-object v3, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->template2Type:Ljava/util/HashMap;

    iget v4, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->viewTypeCounter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v2, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->type2DinamicTemplate:Ljava/util/HashMap;

    iget v3, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->viewTypeCounter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->position2Type:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->viewTypeCounter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static getEmptyView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 225
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 226
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private isV3Template(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getFileVersion()I

    move-result v1

    const/16 v2, 0x7530

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    return v3

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getFileVersion()I

    move-result v1

    const/16 v2, 0x4e20

    if-ne v1, v2, :cond_2

    return v0

    .line 161
    :cond_2
    iget-object v1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    .line 163
    :cond_3
    iget-object v1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-ltz p1, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method private registerDXLifeCycle(Lcom/taobao/android/dinamicx/DXRootView;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;-><init>(Lcom/taobao/android/preview/DXTemplatePreviewAdapter;Lcom/taobao/android/dinamicx/DXRootView;)V

    invoke-virtual {v0, p1, v1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->registerDXRootViewLifeCycle(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->position2Type:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 34
    check-cast p1, Lcom/taobao/android/preview/PreviewViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->onBindViewHolder(Lcom/taobao/android/preview/PreviewViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/taobao/android/preview/PreviewViewHolder;I)V
    .locals 9

    .line 200
    invoke-virtual {p0, p2}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 202
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    iget-object v3, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    iget-object v0, p1, Lcom/taobao/android/preview/PreviewViewHolder;->itemView:Landroid/view/View;

    move-object v5, v0

    check-cast v5, Lcom/taobao/android/dinamicx/DXRootView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->renderTemplate(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/DXRootView;IILjava/lang/Object;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DinamicX"

    .line 204
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXResult;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "preview"

    const-string v2, "bind failed"

    .line 207
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/taobao/android/preview/PreviewViewHolder;->itemView:Landroid/view/View;

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 212
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    const-string v0, "template"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    const-string v0, "columnType"

    .line 213
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "one"

    .line 214
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x1

    .line 215
    :goto_2
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/android/preview/PreviewViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/android/preview/PreviewViewHolder;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->getEmptyView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    goto :goto_1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->type2DinamicTemplate:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    if-eqz p2, :cond_1

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    iget-object v2, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v2, v1, Lcom/taobao/android/dinamicx/DXResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 122
    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :try_start_1
    invoke-direct {p0, p2}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->isV3Template(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 124
    move-object p2, v1

    check-cast p2, Lcom/taobao/android/dinamicx/DXRootView;

    invoke-direct {p0, p2}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->registerDXLifeCycle(Lcom/taobao/android/dinamicx/DXRootView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v1, v0

    :goto_0
    const-string v2, "DXTemplatePreviewActivity"

    const-string v3, "createViewHolder failed"

    .line 130
    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->getEmptyView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 137
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v2, "Preview template failed"

    invoke-static {p1, v2, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 140
    :cond_3
    new-instance p1, Lcom/taobao/android/preview/PreviewViewHolder;

    invoke-direct {p1, v1, v0}, Lcom/taobao/android/preview/PreviewViewHolder;-><init>(Landroid/view/View;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)V

    .line 141
    iget-object p2, p1, Lcom/taobao/android/preview/PreviewViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 143
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object p2

    goto :goto_2

    .line 145
    :cond_4
    iget-object p2, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object p2

    .line 147
    :goto_2
    iget-object v0, p1, Lcom/taobao/android/preview/PreviewViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public updateData(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 62
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    .line 65
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 67
    :goto_0
    invoke-direct {p0}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->buildViewTypes()V

    return-void
.end method
