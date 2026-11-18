.class Lcom/blankj/ALog$TagHead;
.super Ljava/lang/Object;
.source "ALog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/ALog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagHead"
.end annotation


# instance fields
.field consoleHead:[Ljava/lang/String;

.field fileHead:Ljava/lang/String;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput-object p1, p0, Lcom/blankj/ALog$TagHead;->tag:Ljava/lang/String;

    .line 548
    iput-object p2, p0, Lcom/blankj/ALog$TagHead;->consoleHead:[Ljava/lang/String;

    .line 549
    iput-object p3, p0, Lcom/blankj/ALog$TagHead;->fileHead:Ljava/lang/String;

    return-void
.end method
