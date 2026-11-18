.class public Lcom/aligenie/ags/access/AccessService$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/a/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aligenie/ags/access/AccessService$e;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/aligenie/ags/access/AccessService$e;


# direct methods
.method public constructor <init>(Lcom/aligenie/ags/access/AccessService$e;)V
    .locals 0

    iput-object p1, p0, Lcom/aligenie/ags/access/AccessService$e$a;->a:Lcom/aligenie/ags/access/AccessService$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const-string v0, "Access"

    const-string v1, "onGetSystemContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService$e$a;->a:Lcom/aligenie/ags/access/AccessService$e;

    iget-object v0, v0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    invoke-static {v0}, Lcom/aligenie/ags/access/AccessService;->a(Lcom/aligenie/ags/access/AccessService;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
