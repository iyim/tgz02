.class public Lcom/taobao/uikit/extend/component/error/Error$Factory;
.super Ljava/lang/Object;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/error/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static fromMtopResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/uikit/extend/component/error/Error;
    .locals 7

    .line 62
    new-instance v6, Lcom/taobao/uikit/extend/component/error/Error;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/taobao/uikit/extend/component/error/Error;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/uikit/extend/component/error/Error$1;)V

    return-object v6
.end method

.method public static fromMtopResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/uikit/extend/component/error/Error;
    .locals 8

    .line 66
    new-instance v7, Lcom/taobao/uikit/extend/component/error/Error;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/taobao/uikit/extend/component/error/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/uikit/extend/component/error/Error$1;)V

    return-object v7
.end method

.method public static newError(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/uikit/extend/component/error/Error;
    .locals 2

    .line 58
    new-instance v0, Lcom/taobao/uikit/extend/component/error/Error;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/taobao/uikit/extend/component/error/Error;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/uikit/extend/component/error/Error$1;)V

    return-object v0
.end method
