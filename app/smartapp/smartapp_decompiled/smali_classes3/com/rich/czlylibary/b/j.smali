.class public Lcom/rich/czlylibary/b/j;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/rich/czlylibary/manager/c;->a:Z

    sput-boolean v0, Lcom/rich/czlylibary/b/j;->a:Z

    const-string v0, "MiguHttplog"

    sput-object v0, Lcom/rich/czlylibary/b/j;->b:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/rich/czlylibary/b/j;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/rich/czlylibary/b/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/rich/czlylibary/b/j;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/rich/czlylibary/b/j;->a:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/rich/czlylibary/b/j;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
