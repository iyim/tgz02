.class public Lc/b/a/b/o/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/b/o/m$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lc/b/a/b/o/m$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lc/b/a/b/o/m;->d:Landroid/util/ArrayMap;

    iput p2, p0, Lc/b/a/b/o/m;->a:I

    iput-object p4, p0, Lc/b/a/b/o/m;->b:Ljava/lang/String;

    iput-object p5, p0, Lc/b/a/b/o/m;->c:Ljava/lang/String;

    iput-wide p6, p0, Lc/b/a/b/o/m;->g:J

    iput-wide p8, p0, Lc/b/a/b/o/m;->f:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lc/b/a/b/o/m$a;

    invoke-direct {v0, p0, p1}, Lc/b/a/b/o/m$a;-><init>(Lc/b/a/b/o/m;Ljava/lang/String;)V

    iget-object v1, p0, Lc/b/a/b/o/m;->d:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
