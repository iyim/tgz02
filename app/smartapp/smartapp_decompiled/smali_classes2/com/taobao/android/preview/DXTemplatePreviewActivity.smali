.class public Lcom/taobao/android/preview/DXTemplatePreviewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DXTemplatePreviewActivity.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/preview/DXTemplatePreviewActivity$PreviewInfo;,
        Lcom/taobao/android/preview/DXTemplatePreviewActivity$DXPreviewInterface;
    }
.end annotation


# static fields
.field public static final PREVIEW_DINAMIC_MODULE:Ljava/lang/String; = "preview"

.field public static final PREVIEW_INFO:Ljava/lang/String; = "previewInfo"

.field public static final PREVIEW_TAG:Ljava/lang/String; = "DXTemplatePreviewActivity"


# instance fields
.field private adapter:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

.field array:Lcom/alibaba/fastjson/JSONArray;

.field engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

.field private rvMainContainer:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/taobao/android/preview/DXTemplatePreviewActivity;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->downLoadMockData(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/taobao/android/preview/DXTemplatePreviewActivity;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/taobao/android/preview/DXTemplatePreviewActivity;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->gotoImplPreviewInterface(Lcom/alibaba/fastjson/JSONArray;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/taobao/android/preview/DXTemplatePreviewActivity;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->refreshUI(Lcom/alibaba/fastjson/JSONArray;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/taobao/android/preview/DXTemplatePreviewActivity;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->downLoadTemplate(Lcom/alibaba/fastjson/JSONArray;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/taobao/android/preview/DXTemplatePreviewActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->showErrorDialog()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private callMethod(Lcom/taobao/android/preview/DXTemplatePreviewActivity$PreviewInfo;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 270
    iget-object v0, p1, Lcom/taobao/android/preview/DXTemplatePreviewActivity$PreviewInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/taobao/android/preview/DXTemplatePreviewActivity$PreviewInfo;->className:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "previewEngineDidInitialized"

    const/4 v1, 0x1

    .line 275
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 276
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    .line 277
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 279
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private downLoadMockData(Ljava/lang/String;)V
    .locals 4

    .line 184
    new-instance v0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;

    invoke-direct {v0, p0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;-><init>(Lcom/taobao/android/preview/DXTemplatePreviewActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/taobao/android/preview/DXTemplatePreviewActivity$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private downLoadTemplate(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 4

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 164
    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v3}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->getDinamicTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 166
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {v2, v3}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->fetchTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "\u5f00\u59cb\u4e0b\u8f7d\u6a21\u7248"

    .line 174
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->downLoadTemplates(Ljava/util/List;)V

    if-eqz v2, :cond_4

    const-string p1, "\u6a21\u7248\u5df2\u7ecf\u5b58\u5728\uff0c\u76f4\u63a5\u5237\u65b0"

    .line 177
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->adapter:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    invoke-virtual {p1}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public static getDinamicTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 3

    .line 226
    new-instance v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;-><init>()V

    const-string v1, "template"

    .line 227
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    const-string v1, "name"

    .line 228
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    const-string v1, "version"

    .line 229
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const-string v1, "url"

    .line 230
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getPreviewInfoList(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/android/preview/DXTemplatePreviewActivity$PreviewInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 287
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 288
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 289
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, "__preview__"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    const-string v4, "android"

    .line 293
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 297
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 298
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 302
    :cond_3
    new-instance v6, Lcom/taobao/android/preview/DXTemplatePreviewActivity$PreviewInfo;

    invoke-direct {v6}, Lcom/taobao/android/preview/DXTemplatePreviewActivity$PreviewInfo;-><init>()V

    const-string v7, "className"

    .line 303
    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/taobao/android/preview/DXTemplatePreviewActivity$PreviewInfo;->className:Ljava/lang/String;

    const-string v7, "bundlerPath"

    .line 304
    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/taobao/android/preview/DXTemplatePreviewActivity$PreviewInfo;->bundlePath:Ljava/lang/String;

    .line 305
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private gotoImplPreviewInterface(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    const-string v0, "\u5f00\u59cb\u8fdb\u884c\u7ec4\u5efa\u6ce8\u518c"

    .line 259
    invoke-direct {p0, v0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->getPreviewInfoList(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x0

    .line 264
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 265
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/preview/DXTemplatePreviewActivity$PreviewInfo;

    invoke-direct {p0, v1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->callMethod(Lcom/taobao/android/preview/DXTemplatePreviewActivity$PreviewInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initEngineRouter()V
    .locals 3

    .line 124
    new-instance v0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    new-instance v1, Lcom/taobao/android/dinamicx/DXEngineConfig;

    const-string v2, "preview"

    invoke-direct {v1, v2}, Lcom/taobao/android/dinamicx/DXEngineConfig;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;-><init>(Lcom/taobao/android/dinamicx/DXEngineConfig;)V

    iput-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    .line 125
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {v0, p0}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->registerNotificationListener(Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;)V

    return-void
.end method

.method private initRecyclerView()V
    .locals 3

    .line 115
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 116
    iget-object v1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->rvMainContainer:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DXTemplatePreviewActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshUI(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 3

    const-string v0, "refreshUI"

    .line 150
    invoke-direct {p0, v0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->array:Lcom/alibaba/fastjson/JSONArray;

    .line 152
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->adapter:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    iget-object v1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->rvMainContainer:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;-><init>(Landroid/content/Context;Lcom/alibaba/fastjson/JSONArray;Landroid/support/v7/widget/RecyclerView;Lcom/taobao/android/dinamicx/DinamicXEngineRouter;)V

    iput-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->adapter:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    .line 154
    iget-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->rvMainContainer:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->adapter:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->updateData(Lcom/alibaba/fastjson/JSONArray;)V

    :goto_0
    return-void
.end method

.method private showErrorDialog()V
    .locals 3

    .line 130
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u83b7\u53d6mock\u6570\u636e\u5931\u8d25\uff0c\u662f\u5426\u91cd\u8bd5\uff1f"

    .line 131
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 132
    new-instance v1, Lcom/taobao/android/preview/DXTemplatePreviewActivity$2;

    invoke-direct {v1, p0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity$2;-><init>(Lcom/taobao/android/preview/DXTemplatePreviewActivity;)V

    const-string v2, "\u91cd\u8bd5"

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 139
    new-instance v1, Lcom/taobao/android/preview/DXTemplatePreviewActivity$3;

    invoke-direct {v1, p0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity$3;-><init>(Lcom/taobao/android/preview/DXTemplatePreviewActivity;)V

    const-string v2, "\u8fd4\u56de"

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget p1, Lcom/taobao/android/dinamic/R$layout;->activity_template_preview:I

    invoke-virtual {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->setContentView(I)V

    const-string p1, "onCreate"

    .line 57
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->overridePendingTransition(II)V

    .line 59
    sget p1, Lcom/taobao/android/dinamic/R$id;->rv_main_container:I

    invoke-virtual {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->rvMainContainer:Landroid/support/v7/widget/RecyclerView;

    .line 60
    sget p1, Lcom/taobao/android/dinamic/R$id;->dinamic_preview_back:I

    invoke-virtual {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 61
    new-instance v0, Lcom/taobao/android/preview/DXTemplatePreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity$1;-><init>(Lcom/taobao/android/preview/DXTemplatePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-direct {p0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->initEngineRouter()V

    .line 69
    invoke-direct {p0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->initRecyclerView()V

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "previewInfo"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate info :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->downLoadMockData(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->finish()V

    const-string p1, "onCreate info isEmpty"

    .line 80
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->finish()V

    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 314
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const-string v0, "onDestroy"

    .line 315
    invoke-direct {p0, v0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DinamicXEngine;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "onNewIntent"

    .line 98
    invoke-direct {p0, v0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "previewInfo"

    .line 100
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->downLoadMockData(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->finish()V

    const-string p1, "onNewIntent info isEmpty"

    .line 106
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->finish()V

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onNotificationListener(Lcom/taobao/android/dinamicx/notification/DXNotificationResult;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "\u6536\u5230\u5237\u65b0\u8bf7\u6c42\u5f00\u59cb\u5237\u65b0"

    .line 239
    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->array:Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p0, p1}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->refreshUI(Lcom/alibaba/fastjson/JSONArray;)V

    .line 241
    iget-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->adapter:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    invoke-virtual {p1}, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const-string v0, "onResume"

    .line 92
    invoke-direct {p0, v0}, Lcom/taobao/android/preview/DXTemplatePreviewActivity;->log(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
