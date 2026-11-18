.class public Lcom/alibaba/ailabs/genie/contacts/databases/ProviderConstant;
.super Ljava/lang/Object;
.source "ProviderConstant.java"


# static fields
.field public static final AUTHORITIES:Ljava/lang/String; = "com.alibaba.ailabs.genie.contacts"

.field public static final BASE_URI:Landroid/net/Uri;

.field public static final CONTACTS_PATH:Ljava/lang/String; = "contacts"

.field public static final CONTACTS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.alibaba.ailabs.genie.contacts"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/databases/ProviderConstant;->BASE_URI:Landroid/net/Uri;

    .line 13
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databases/ProviderConstant;->BASE_URI:Landroid/net/Uri;

    const-string v1, "contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/databases/ProviderConstant;->CONTACTS_URI:Landroid/net/Uri;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
