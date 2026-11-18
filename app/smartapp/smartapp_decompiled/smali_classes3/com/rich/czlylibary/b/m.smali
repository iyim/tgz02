.class public Lcom/rich/czlylibary/b/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/app/Application;


# direct methods
.method public static a()Landroid/app/Application;
    .locals 2

    sget-object v0, Lcom/rich/czlylibary/b/m;->a:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Utils must be init"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 0
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/rich/czlylibary/b/m;->a:Landroid/app/Application;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
