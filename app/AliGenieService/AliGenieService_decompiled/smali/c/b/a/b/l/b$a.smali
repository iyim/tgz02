.class public Lc/b/a/b/l/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/b/l/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/b/a/b/l/b;


# direct methods
.method public constructor <init>(Lc/b/a/b/l/b;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/b/l/b$a;->b:Lc/b/a/b/l/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lc/b/a/b/l/b$a;->b:Lc/b/a/b/l/b;

    new-instance v1, Lc/b/a/b/l/b$a$a;

    invoke-direct {v1, p0}, Lc/b/a/b/l/b$a$a;-><init>(Lc/b/a/b/l/b$a;)V

    .line 1
    iput-object v1, v0, Lc/b/a/b/l/b;->d:Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
