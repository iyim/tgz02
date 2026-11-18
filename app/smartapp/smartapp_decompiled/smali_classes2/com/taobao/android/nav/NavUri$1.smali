.class final Lcom/taobao/android/nav/NavUri$1;
.super Ljava/lang/Object;
.source "NavUri.java"

# interfaces
.implements Lcom/taobao/android/nav/NavUri$Schemed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/nav/NavUri;->scheme(Ljava/lang/String;)Lcom/taobao/android/nav/NavUri$Schemed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nav_uri:Lcom/taobao/android/nav/NavUri;


# direct methods
.method constructor <init>(Lcom/taobao/android/nav/NavUri;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/taobao/android/nav/NavUri$1;->val$nav_uri:Lcom/taobao/android/nav/NavUri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public host(Ljava/lang/String;)Lcom/taobao/android/nav/NavUri;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/taobao/android/nav/NavUri$1;->val$nav_uri:Lcom/taobao/android/nav/NavUri;

    iget-object v0, v0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 19
    iget-object p1, p0, Lcom/taobao/android/nav/NavUri$1;->val$nav_uri:Lcom/taobao/android/nav/NavUri;

    return-object p1
.end method
