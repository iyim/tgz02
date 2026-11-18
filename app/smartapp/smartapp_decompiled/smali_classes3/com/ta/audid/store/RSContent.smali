.class public Lcom/ta/audid/store/RSContent;
.super Lcom/ta/audid/db/Entity;
.source "RSContent.java"


# annotations
.annotation runtime Lcom/ta/audid/db/annotation/TableName;
    value = "rs"
.end annotation


# instance fields
.field private content:Ljava/lang/String;
    .annotation runtime Lcom/ta/audid/db/annotation/Column;
        value = "content"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/ta/audid/db/Entity;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/ta/audid/store/RSContent;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/ta/audid/db/Entity;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/ta/audid/store/RSContent;->content:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1}, Lcom/ta/audid/store/RSContent;->setContent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ta/audid/store/RSContent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ta/audid/store/RSContent;->content:Ljava/lang/String;

    return-void
.end method
