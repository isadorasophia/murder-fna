using System;

namespace Microsoft.Xna.Framework.Input
{
	public static class FileDropEXT
	{
		/// <summary>
		/// Use this event to receive notifications on files dropped on window.
		/// </summary>
		public static event Action<string> DropFile;

		#region Internal Event Access Method

		internal static void OnDropFile(string path)
		{
			if (DropFile != null)
			{
				DropFile(path);
			}
		}

		#endregion
	}
}
