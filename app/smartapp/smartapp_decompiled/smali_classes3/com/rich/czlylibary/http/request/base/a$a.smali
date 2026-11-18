.class final Lcom/rich/czlylibary/http/request/base/a$a;
.super Lokio/ForwardingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/czlylibary/http/request/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/rich/czlylibary/http/request/base/a;

.field private b:Lcom/rich/czlylibary/http/model/Progress;


# direct methods
.method constructor <init>(Lcom/rich/czlylibary/http/request/base/a;Lokio/Sink;)V
    .locals 2

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/a$a;->a:Lcom/rich/czlylibary/http/request/base/a;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    new-instance p2, Lcom/rich/czlylibary/http/model/Progress;

    invoke-direct {p2}, Lcom/rich/czlylibary/http/model/Progress;-><init>()V

    iput-object p2, p0, Lcom/rich/czlylibary/http/request/base/a$a;->b:Lcom/rich/czlylibary/http/model/Progress;

    iget-object p2, p0, Lcom/rich/czlylibary/http/request/base/a$a;->b:Lcom/rich/czlylibary/http/model/Progress;

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/request/base/a;->contentLength()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/rich/czlylibary/http/model/Progress;->totalSize:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    iget-object p1, p0, Lcom/rich/czlylibary/http/request/base/a$a;->b:Lcom/rich/czlylibary/http/model/Progress;

    new-instance v0, Lcom/rich/czlylibary/http/request/base/a$a$1;

    invoke-direct {v0, p0}, Lcom/rich/czlylibary/http/request/base/a$a$1;-><init>(Lcom/rich/czlylibary/http/request/base/a$a;)V

    invoke-static {p1, p2, p3, v0}, Lcom/rich/czlylibary/http/model/Progress;->changeProgress(Lcom/rich/czlylibary/http/model/Progress;JLcom/rich/czlylibary/http/model/Progress$a;)Lcom/rich/czlylibary/http/model/Progress;

    return-void
.end method
