.class public final Lcom/alibaba/android/umbrella/link/UMLinkLogImp;
.super Ljava/lang/Object;
.source "UMLinkLogImp.java"

# interfaces
.implements Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "umbrella"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "commitFailure"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static/range {p1 .. p8}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "commitSuccess"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static/range {p1 .. p6}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public createLinkId(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 2

    const-string v0, "umbrella"

    const-string v1, "createLinkId"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Lcom/alibaba/android/umbrella/link/UMRefContext;

    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/util/UMLaunchId;->createLinkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/android/umbrella/link/UMRefContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public logBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "logBegin"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static/range {p1 .. p6}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "logEnd"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static/range {p1 .. p8}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "logError"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static/range {p1 .. p8}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logErrorRawDim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "logErrorRawDim"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_5

    .line 56
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 70
    invoke-static {v2}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {v2}, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->findDimKey(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 78
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    .line 80
    invoke-static/range {v1 .. v8}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_5
    :goto_1
    const/4 v14, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v15, p8

    .line 57
    invoke-static/range {v8 .. v15}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "logInfo"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static/range {p1 .. p6}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logMtopReq(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "logMtopReq"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static/range {p1 .. p8}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logMtopReq(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logMtopResponse(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "logMtopResponse"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    instance-of v0, p4, Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v0, :cond_0

    .line 129
    move-object v4, p4

    nop

    nop

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v1 .. v7}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logMtopResponse(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    :cond_0
    return-void
.end method

.method public logPageLifecycle(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "logPageLifecycle"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v2 .. v10}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logPageLifecycle(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logPageLifecycle2(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "logPageLifecycle2"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static/range {p1 .. p9}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logPageLifecycle(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logSimpleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "umbrella"

    const-string v1, "logSimpleInfo"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logSimpleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logUIAction(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "logUIAction"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logUIAction2(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logUIAction2(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")V"
        }
    .end annotation

    const-string v0, "umbrella"

    const-string v1, "logUIAction2"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v2 .. v11}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logUIAction2(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
