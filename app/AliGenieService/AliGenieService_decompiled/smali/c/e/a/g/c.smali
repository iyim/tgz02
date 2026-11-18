.class public Lc/e/a/g/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/e/a/g/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc/e/a/g/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/e/a/g/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/c;->c:Ljava/lang/String;

    iget-object v0, p1, Lc/e/a/g/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/c;->a:Ljava/lang/String;

    iget-object v0, p1, Lc/e/a/g/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/c;->b:Ljava/lang/String;

    iget-object p1, p1, Lc/e/a/g/c;->c:Ljava/lang/String;

    iput-object p1, p0, Lc/e/a/g/c;->c:Ljava/lang/String;

    return-void
.end method
