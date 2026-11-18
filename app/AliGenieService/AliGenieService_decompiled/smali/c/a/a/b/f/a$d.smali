.class public Lc/a/a/b/f/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/b/f/a;->a(Ljava/lang/String;Lc/a/a/b/g/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lc/a/a/b/g/a;

.field public final synthetic d:Z

.field public final synthetic e:Lc/a/a/b/f/a;


# direct methods
.method public constructor <init>(Lc/a/a/b/f/a;Ljava/lang/String;Lc/a/a/b/g/a;Z)V
    .locals 0

    iput-object p1, p0, Lc/a/a/b/f/a$d;->e:Lc/a/a/b/f/a;

    iput-object p2, p0, Lc/a/a/b/f/a$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/a/a/b/f/a$d;->c:Lc/a/a/b/g/a;

    iput-boolean p4, p0, Lc/a/a/b/f/a$d;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc/a/a/b/f/a$d;->e:Lc/a/a/b/f/a;

    invoke-virtual {v0}, Lc/a/a/b/f/a;->d()Lc/a/a/b/g/d;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/b/f/a$d;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/a/a/b/f/a$d;->c:Lc/a/a/b/g/a;

    iget-boolean v3, p0, Lc/a/a/b/f/a$d;->d:Z

    invoke-virtual {v0, v1, v2, v3}, Lc/a/a/b/g/d;->a(Ljava/lang/String;Lc/a/a/b/g/a;Z)V

    return-void
.end method
