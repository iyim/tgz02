.class public Lcom/rich/czlylibary/b/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = false

.field private static b:Ljava/lang/String; = "MiguHttp"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/rich/czlylibary/b/i;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/rich/czlylibary/b/i;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 0

    sput-object p0, Lcom/rich/czlylibary/b/i;->b:Ljava/lang/String;

    sput-boolean p1, Lcom/rich/czlylibary/b/i;->a:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Z)V
    .locals 1

    sget-object v0, Lcom/rich/czlylibary/b/i;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
