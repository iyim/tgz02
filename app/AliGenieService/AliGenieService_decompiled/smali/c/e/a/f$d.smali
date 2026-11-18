.class public final Lc/e/a/f$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/e/a/f$d;->a:J

    iput-wide v0, p0, Lc/e/a/f$d;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lc/e/a/f$d;->c:I

    iput v0, p0, Lc/e/a/f$d;->d:I

    iput-boolean v0, p0, Lc/e/a/f$d;->e:Z

    iput-boolean v0, p0, Lc/e/a/f$d;->f:Z

    iput-boolean v0, p0, Lc/e/a/f$d;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/e/a/f$d;->a:J

    iput-wide v0, p0, Lc/e/a/f$d;->b:J

    const/4 p1, 0x0

    iput p1, p0, Lc/e/a/f$d;->c:I

    iput p1, p0, Lc/e/a/f$d;->d:I

    iput-boolean p1, p0, Lc/e/a/f$d;->e:Z

    iput-boolean p1, p0, Lc/e/a/f$d;->f:Z

    iput-boolean p1, p0, Lc/e/a/f$d;->g:Z

    return-void
.end method
