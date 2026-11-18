.class Lcom/rich/czlylibary/http/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/czlylibary/http/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/rich/czlylibary/http/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rich/czlylibary/http/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rich/czlylibary/http/a;-><init>(Lcom/rich/czlylibary/http/a$1;)V

    sput-object v0, Lcom/rich/czlylibary/http/a$a;->a:Lcom/rich/czlylibary/http/a;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a()Lcom/rich/czlylibary/http/a;
    .locals 1

    sget-object v0, Lcom/rich/czlylibary/http/a$a;->a:Lcom/rich/czlylibary/http/a;

    return-object v0
.end method
